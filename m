Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57C11C7EE2A
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 16:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzcJB3BXEDDlMoVS73wjGah3MiyTfmkPDxoKIkZK/a0=; b=ac8nNDL3LXi6YT
	soNdamNiDEGMO98mKQdGbfD8vWKEQxOyZS5dxV4fsu0cN02ozL808gJn9fiOnaClHnIbg+IO+qbZb
	F17ubDb2I6NTFBCN67PfTmBWgbSE8GzJ8C8rn76sZhcZJjv6Y0Brz5tkiYOUy7w8Yc4GIVFY0elNz
	tU4tAwYbWeWrE7k9LGBioamYpA/Seh1jRbp0+PtJxbN6eVmmXOXyZ+ea37sYZ/BrJCNpXgm/Lwk00
	JYiZ864hIsrbRr3oUBMir07KLaSlIq4RMFIlqtm6BkilnPE4ekIvfi16pGd6jyGaGKgwFMaMGmsPL
	YmyC2JB3ie2y9dBurGsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxeh-006UVw-2I;
	Tue, 16 May 2023 16:36:07 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxea-006UQT-21
	for linux-rockchip@lists.infradead.org;
	Tue, 16 May 2023 16:36:01 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-53033a0b473so7432893a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 16 May 2023 09:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1684254959; x=1686846959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FL6w8myWjgtb/S1SAOMcs3r/GDgQ5wlYAe3BUk1YfiA=;
        b=xo2Pq9Dm6YX6qO5b/3CxpSD12kZaq2lWSCY9+3BZuJ10elTQOYqHSNRFp9DSBUcz9f
         0ZznACPcsw8VuISCw9aoV9QoDhIJNvsL3NZ560SvvYl9qLRHiZlYnENELIaCpiGzfpon
         n4ue6OevuZDmPuoxeveSHjRFabsCUvAQ8W+v9w6vWX5/Dg71LxNYr0jA2MjI7waCFx21
         Km+/sVKX377ajnW7/3rF7BBcx4Q1XPm8d9s5DiL4xylCb+vLvClwMDxbGnaThyi1yV9Y
         ID1dnI8FFOOKs53mKkx2atGkomlEyXlVZl7hGUygINDfsO4hrlmNoqcWZnM1ddxnsDiy
         Qz0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254959; x=1686846959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FL6w8myWjgtb/S1SAOMcs3r/GDgQ5wlYAe3BUk1YfiA=;
        b=BJsCC3jdNlGZWPseq26GbXQ+gR5ULy8ByQEf9sBR0KmCzSR6fAUNkh/nbE12w4jKuI
         vxTKFN3KnM3TMjBSCMPcKGpcD9VW30rJ2jqfHOOWZkZgmEagvnUbHSQ5aea5NBo5Un2R
         7bbCDP4WPz2AXgIKv1IXyjIVVElpqEQEclb6Dn7IRw73q1G9ycy5vtZPH9O+luz8SnCW
         N3wX31r06IFoMgyERZCrtGwwzJws0EEGJ9+Q3Mc962yXxXCNGRXYw/m38rKv3JSm4YIs
         ZjV7HqGdCVfaY4dT8l20xdZWjJVKRB2dKTHlUUucUjqrSw9bgbQsOGS7jtO1knZA2rIu
         tz2w==
X-Gm-Message-State: AC+VfDwaElnvdYRoKkUQ8mYIXL/Nnt5BmuQRGlLDOmJJ1e3JwqlY1vgP
	jtCgtnrTY3pPNyc8l08/dW4MYg==
X-Google-Smtp-Source: ACHHUZ50CQ0KnsPob+V8BU0toQR5qpD2NM0Wp0w0TtlQvoiLtQGIvMUuuh0spaA/rYLyvGVP14aegA==
X-Received: by 2002:a05:6a20:3943:b0:106:5915:e888 with SMTP id r3-20020a056a20394300b001065915e888mr8161656pzg.43.1684254959242;
        Tue, 16 May 2023 09:35:59 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a181:890:d993:6673:2242])
        by smtp.gmail.com with ESMTPSA id u19-20020aa78393000000b00642f527cd28sm13686983pfm.33.2023.05.16.09.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:35:59 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/4] arm64: dts: rockchip: Add Rockchip RK3588J
Date: Tue, 16 May 2023 22:04:52 +0530
Message-Id: <20230516163454.997736-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230516163454.997736-1-jagan@edgeble.ai>
References: <20230516163454.997736-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_093600_671807_9C4532E7 
X-CRM114-Status: GOOD (  13.38  )
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

Um9ja2NoaXAgUkszNTg4SiBpcyB0aGUgaW5kdXN0cmlhbC1ncmFkZSB2ZXJzaW9uIG9mIFJLMzU4
OCBTb0MgYW5kCmlzIG9wZXJhdGVkIHdpdGjCoC00MCDCsEMgdG8gKzg1IMKwQyB0ZW1wYXJhdHVy
ZS4KCkFkZCByazM1ODhqIHNwZWNpZmljIGR0c2kgZm9yIGFkZGluZyByazM1ODhqIHNwZWNpZmlj
IG9wZXJhdGluZyBwb2ludHMKYW5kIG90aGVyIGNoYW5nZXMgdG8gYmUgYWRkIGluIGZ1dHVyZS4K
ClNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGVkZ2VibGUuYWk+Ci0tLQogYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhqLmR0c2kgfCA3ICsrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OGouZHRzaQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4ai5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODhqLmR0c2kKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4z
OGI5ZGJmMzhhMjEKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OGouZHRzaQpAQCAtMCwwICsxLDcgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiAoR1BMLTIuMCsgT1IgTUlUKQorLyoKKyAqIENvcHlyaWdodCAoYykgMjAyMiBSb2NrY2hp
cCBFbGVjdHJvbmljcyBDby4sIEx0ZC4KKyAqCisgKi8KKworI2luY2x1ZGUgInJrMzU4OC5kdHNp
IgotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
