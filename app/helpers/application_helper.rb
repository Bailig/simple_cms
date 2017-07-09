module ApplicationHelper

    def error_messages_for(object)
        render(:partial => "application/error_messages", :locals => {:object => object})
    end
    
    def status_tag(boolean, options={})
        options[:true_text] ||= ""
        options[:false_text] ||= ""

        if boolean
            content_tag(:span, options[:true_text], :class => "status true")
        else
            content_tag(:span, options[:false_text], :class => "status false")
        end
    end

    def edit_button_for(path)
        render(:partial => "application/edit_button", :locals => {:path => path})
    end

    def delete_button_for(object, path)
        render(:partial => "application/delete_button", :locals => {:object => object, :path => path})
    end
    
    def breadcrumb_for(subject, page, page_title)
        if page 
            render(:partial => "application/breadcrumb_for_pages_base", :locals => {:page => page, :page_title => page_title})
        elsif subject
            render(:partial => "application/breadcrumb_for_subjects_base", :locals => {:subject => subject,  :page_title => page_title})
        else
            render(:partial => "application/breadcrumb_for_base", :locals => {:page_title => page_title})
        end
    end
end
