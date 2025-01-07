export interface NotificationPayload {
  externalIds: string[];
  title: string;
  content: string;
  imageUrl?: string;
  channels: string[];
}

export interface OneSignalNotification {
  app_id: string;
  include_aliases?: {
    external_id: string[];
  };
  contents?: { en: string };
  headings?: { en: string };
  big_picture?: string;
  ios_attachments?: { id1: string };
  email_subject?: string;
  email_body?: string;
  email_from_address?: string;
  target_channel: "push" | "email";
  include_unsubscribed?: boolean;
  include_email_tokens?: string[];
  template_id?: string;
  custom_data?: Record<string, string>;
}
