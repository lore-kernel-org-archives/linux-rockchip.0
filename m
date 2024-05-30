Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73C03C25B74
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 14:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPGnO9AEhVpwHqVqzoh5fEWhp21quTXdbQ82X5vCP+A=; b=utysM8H+QxMgZJ
	QJfFCCP+vfiXLaAhUijCpm8b4uq8w2NKy0C4SEhSU7xjMU4iKp5pzQnuKjp8qhy/HOrDQEkjXQO9c
	jEWpMbC/4EdtFVZHfEZu5IG2y0eseeoI6e2XEWeXLToIybjyZaW9LwD3ZalE9bRjTn3BU8cKHrxy7
	5dE47S0c8nxhcrigwi6KZuGMt1jQJAHwLhjx6C0XJ9Z9b45hwhpUt4ezFpBLmK01RwiiBAxvdZhqt
	kH2lHfOh0bCPUHsRgvnSZnClw7+GAGzEKXFKZPwkGsmBmdlCmvpwkkQX8ytLQs0Mtfs5DSGIYFopQ
	TRwxU2uOwQTBMqT/MY4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCgrX-00000007YbI-000u;
	Thu, 30 May 2024 14:34:39 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCgrT-00000007YY8-2JdH
	for linux-rockchip@lists.infradead.org;
	Thu, 30 May 2024 14:34:37 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-794ad6d2884so69373085a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 07:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717079668; x=1717684468; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hX/wC7qXXog0qac360LVKqW+SM9R51AMBt2HpIW0OBk=;
        b=S8e8X3zuBSMCxnCbSZfOT4apI4qUKK+iVni6v9RWVC8TmQTE8yFftFZAF2kHlnmcuG
         Ial985neEPVQ2YXL3gMgU+TGMTdQJpBbNVOwGt+zfBBOlGvtfVQtqyBK2QToluHNtVlM
         YLq+kJlMzg+83EQvLaM587xKSts7aji9rdNog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717079668; x=1717684468;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hX/wC7qXXog0qac360LVKqW+SM9R51AMBt2HpIW0OBk=;
        b=UACKGzKflbt2Wwv6UNzCYFhE9Vh+R+AcgP6/VOd2p+8AB+326VXIYleKukW+yKk5nW
         nibfVTMTRS2tN9GVDGx90jtoyxxm2kMxFpaT51+rkZH4SSUl/9rp8V3TBISez0ZUGJJw
         hq4DVTIU6f/sOED/uMQOvIofLfJQ/A6M55jj4CBx/oL2Fix2FYtUdzUryOABKUddwFHa
         odBJj7HZsNrszcBjXh0RpMF6vP+Ik2blScibqbXTei5PiExUEfWEjEUDeF3N+GelUzu6
         to1kgm9SjfdIsq5X01ist+Sij59R+G0qXkY18DZWjhXsWLaQqwzXYif8S38485sroqT0
         G00A==
X-Forwarded-Encrypted: i=1; AJvYcCV+0oVJudA7bo3xMYo7PZ/2fcB+cjNzSfNQDxUNQFF2Yvgg/ZZXAgh1OXAz4sRcqwfOm9yH7sKQI9xeWJYtZU1PrdW01J+6KYMzefuGIY5NgbhL
X-Gm-Message-State: AOJu0Yz7NeHZtKulxmIJCIsrUPp1fHlty8TfzHehEvQhd9QJM5uJZmuS
	5I99uqWu8HK4XS6O3UYeFUtlNd8XgLmWysT7FaX386ObaOO+mVW4XUwPPYScXAYyzu+V2uBtDww
	=
X-Google-Smtp-Source: AGHT+IHgfcgCdxb9F1bOVDrZ3B8O+lqD9aTqVH0lNxyEtCk2v1D/iTAvomx83py5Twspx51g6IYyIQ==
X-Received: by 2002:a37:f510:0:b0:792:eac7:7bf4 with SMTP id af79cd13be357-794e9da751cmr220205785a.26.1717079668104;
        Thu, 30 May 2024 07:34:28 -0700 (PDT)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com. [209.85.160.169])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-794abd432desm558043685a.126.2024.05.30.07.34.26
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 07:34:26 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-43e14f0bd75so282221cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 07:34:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVgPEwyUYD92+ekFp3A37mz3777TyXq+w+Id6+odeSGYwi/opZvgQ7HXYAEe27MxHQaJxUGPSM5CQ9a2mIR6QdqrHMsF9zfhYuEux6WXOdTzXYN
X-Received: by 2002:a05:622a:260c:b0:43f:f0e9:5f25 with SMTP id
 d75a77b69052e-43ff0e96040mr383391cf.25.1717079665507; Thu, 30 May 2024
 07:34:25 -0700 (PDT)
MIME-Version: 1.0
References: <20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org> <20240529-edp-panel-drop-v2-2-fcfc457fc8dd@linaro.org>
In-Reply-To: <20240529-edp-panel-drop-v2-2-fcfc457fc8dd@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 May 2024 07:34:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XjkuRQ_bPYiNi2Jab2vDpegUBA2PesFfix5NgvF-pF+A@mail.gmail.com>
Message-ID: <CAD=FV=XjkuRQ_bPYiNi2Jab2vDpegUBA2PesFfix5NgvF-pF+A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: panel-simple: drop several
 eDP panels
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Jeffrey Hugo <quic_jhugo@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_073435_621633_FF8358A7 
X-CRM114-Status: GOOD (  12.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBUdWUsIE1heSAyOCwgMjAyNCBhdCA0OjUz4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo8
ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IFRoZSBwYW5lbC1zaW1wbGUu
eWFtbCBpbmNsdWRlcyBsZWdhY3kgYmluZGluZ3MgZm9yIHNldmVyYWwgZURQIHBhbmVscwo+IHdo
aWNoIHdlcmUgbmV2ZXIgdXNlZCBpbiBEVCBmaWxlcyBwcmVzZW50IGluIExpbnV4IHRyZWUgYW5k
IG1vc3QgbGlrZWx5Cj4gaGF2ZSBuZXZlciBiZWVuIHVzZWQgd2l0aCB0aGUgdXBzdHJlYW0ga2Vy
bmVsLiBEcm9wIGNvbXBhdGlibGVzIGZvcgo+IHRoZXNlIHBhbmVscyBpbiBmYXZvdXIgb2YgdXNp
bmcgYSBnZW5lcmljICJlZHAtcGFuZWwiIGRldmljZSBvbiB0aGUgQVVYCj4gYnVzLgo+Cj4gU2ln
bmVkLW9mZi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3Jn
Pgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3BhbmVsL3BhbmVsLXNp
bXBsZS55YW1sICAgICAgICB8IDEwIC0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGRl
bGV0aW9ucygtKQoKQWxsIG9mIHRoZXNlIGFyZSBmaW5lIGFzIHBlciBteSByZXNlYXJjaCBbMV0u
CgpSZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoK
WzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvQ0FEPUZWPVh6MVZzRjhqRzBxLUxkaytwPU5Z
LUNoSmtUazBpVzhmcTJiTz1vUkZ2WFJBQG1haWwuZ21haWwuY29tCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
