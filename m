Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C66A0C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 08:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAAzvLoiKd6zFCjxiVkflcNEAMECSi38F070P9dCM7I=; b=VDXWGDrWsR6Y0K
	UEWcwwGpa305DlMF745j31vMsT7wPh1QaP93bJvO37G7dlpJv6che5EdOVwSb2wbgBMWOkWY9wMYo
	jxHNltk+DY9vIAOXgdvBxALWAH+0BTi+LKkZcURMRWl47j/jWRdNB1ptgCNJ50bgD5qWQ1Tlt91SO
	uRzSw9h8y1hzH5nGy0wK9KhxKDK0LpCkhI/RIH4JyLNhQbSjA4jwz8rbXiQgW+/r7IDTKlC0SdiAR
	Ild8J2W6XAoHc0mjK7R0YxPiUGe536YP6mINixtkQEP86fLqChVLHHK12IlP+IGDPqWDnNzM4zAhE
	VZJ8pDF5ip0AMjUz/Mng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOasO-000oZC-Qk; Thu, 18 Aug 2022 08:27:40 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOasL-000oUp-C4
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 08:27:38 +0000
Received: by mail-lj1-x22a.google.com with SMTP id x25so1021364ljm.5
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 01:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=IgR5SKNZXMCrQxkyYrQgrXS9ywlkfSHFIO+/t184iOU=;
        b=VjtrvLqB94Z1XPU8pQ5yXdmLt9mYLZ7BjJvCeeesy0vSQtCSNX/0DYPBFZHzJfNauz
         7rJIuZb6XE4nY1UGDmqLMN04fIACtY+W7eLxVxdZkssK0bIuyJ946ZGyxjUZkkyjIFMy
         NlIPhz5E95KwaF1GM4EGjMqnpjftqz928qny5ZUxjfEhQYsjdNqzOemZgCgr3qYIqzLz
         wYx2MhN2+jwhK83k/Nn3IfX0WjoY4lO1ARDd+m/xcq+Fyt9FYtDzleTj6qiQwZn2JVmb
         Cy1OLuRrKNsIC/WLf6dUCLFP2xNGZgn16bQOkFnqXopQd+s2T5OYHma/RqQ+X/JpO61e
         wlEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=IgR5SKNZXMCrQxkyYrQgrXS9ywlkfSHFIO+/t184iOU=;
        b=FW8TI056xGautPdIYc449tjLA0LosYhIeaVa4VIzLQqe8ILQEG2J7v47sNlDCNGxFo
         F4KrGPYJf6VLSJUuEuC0AruDS6SEwyWXdS1xXephIJj6mZ5AtV5sb3p+fsaG0YfLe+KY
         UKPxK6ulQgAPLlIok/I3CfSpc62WXmxBqwnJR6E6psNV48TFfqwE+Fl9OeXBkaV7n/Nd
         cMV+UrQXrbYCNnd7ONMV6UkFhngYsFtkG8XfH1KTHv8OHzPVQDfQTvoOmAEggxZB/chu
         W0+TMI+AgtYEv834ZKI3MLRia8xOf0uYng5JAGgJmtzLEkguC2HhrYupkxEPYjzQoYdx
         FneQ==
X-Gm-Message-State: ACgBeo1cYf2vcn1zZFKB1g6eDuO3oNPaLS5qR69wvx2UlpyqFCTDYyHM
	h0j7JMoUWqIaQkiM0tiYait0U3by3o+MBLKZxtM=
X-Google-Smtp-Source: AA6agR6FaZ7gXaou70ewzpbtZl5RZYpnuY175gio92TfXAiQ2joX0/xQyTe4br8lF4+rIzCPV1NorkmkJzek4n25dQc=
X-Received: by 2002:a05:651c:a04:b0:25e:7523:20b2 with SMTP id
 k4-20020a05651c0a0400b0025e752320b2mr536282ljq.424.1660811254900; Thu, 18 Aug
 2022 01:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220817204954.28135-1-macroalpha82@gmail.com> <20220817204954.28135-3-macroalpha82@gmail.com>
In-Reply-To: <20220817204954.28135-3-macroalpha82@gmail.com>
From: Maya Matuszczyk <maccraft123mc@gmail.com>
Date: Thu, 18 Aug 2022 10:26:58 +0200
Message-ID: <CAO_Mup+b_u5P0y3wPus8yWj+hmVEdg4-m9o3GzMUWPAXpAr95g@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353 and RG503
To: Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree <devicetree@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Peter Geis <pgwipeout@gmail.com>, Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_012737_519257_5378F0AE 
X-CRM114-Status: GOOD (  13.27  )
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

SGV5LAoKxZtyLiwgMTcgc2llIDIwMjIgbyAyMjo1MCBDaHJpcyBNb3JnYW4gPG1hY3JvYWxwaGE4
MkBnbWFpbC5jb20+IG5hcGlzYcWCKGEpOgo+Cj4gRnJvbTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21v
cmdhbkBob3RtYWlsLmNvbT4KPgo+IEFkZCBlbnRyeSBmb3IgdGhlIEFuYmVybmljIFJHMzUzIGFu
ZCBSRzUwMyBoYW5kaGVsZCBkZXZpY2VzLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9yZ2Fu
IDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgMTAgKysrKysrKysrKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+IGluZGV4IDc4MTFiYTY0MTQ5Yy4u
OTAyNjk2MzY5NGYwIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+IEBAIC0zMCw2ICszMCwxNiBAQCBwcm9wZXJ0aWVz
Ogo+ICAgICAgICAgICAgLSBjb25zdDogYW1hcnVsYSx2eWFzYS1yazMyODgKPiAgICAgICAgICAg
IC0gY29uc3Q6IHJvY2tjaGlwLHJrMzI4OAo+Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEFuYmVy
bmljIFJHMzUzCj4gKyAgICAgICAgaXRlbXM6Cj4gKyAgICAgICAgICAtIGNvbnN0OiBhbmJlcm5p
YyxyZzM1Mwo+ICsgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTY2ClRoZSBkZXZpY2Ug
aXMgbmFtZWQgUkczNTNQLCBub3QgUkczNTMuCk90aGVyd2lzZSBwYXRjaCBsb29rcyBnb29kIHRv
IG1lLgoKQmVzdCBSZWdhcmRzLApNYXlhIE1hdHVzemN6eWsKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
