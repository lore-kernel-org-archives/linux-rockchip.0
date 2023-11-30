Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 610A9C10DC2
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 15:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OreLjUdmFwL4BEPx/P7svj17GY12JD2lpiP5KluUqaE=; b=CKh0pzAdt+Ol/w
	lb5IXvnjXos3NBb3CGQ3JbMG55dLHyl5a5RMOqhcydHandJvFYrDYhnQxxEdSFNTtz1kRKtQQoaYk
	UvTLP4GhLxYXnEdwYCGGdeOUr0i/JWLN2uurtd2mN+oDqrDAi5soHkllb3l+cC6TdvfUMsuElKWgK
	rYNmHlJx3bEORTACna2juALq2U909GOWF0jGgBK2FUae8dbpVKossAQqIrLUkLMOyNqeAmgRfglhz
	boKISM7FlIhH8gUmEMPEZxTyzcq9e+/cyrgtUBQ91as/fEjQLnY7L5JGBC5Xv6/b03RVx4MSh4tfw
	RchBJ9bii4YAdhKifzMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jPA-00BGnI-1U;
	Thu, 30 Nov 2023 15:56:44 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jP6-00BGkb-0J
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 15:56:41 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6d7eca548ccso615016a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 07:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701359799; x=1701964599; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PaHm7z9yY7JhEbhzyWmBl6MrUO4DRuFVOID91e7Rsas=;
        b=S8tDcy882+sG98XQRajq8Oh4dSlBU0UpSNuJ4E1emq9wBxrR8Y1VppdPBXYBFFmEz7
         nZuukmg1bqRsyzxV4NmEIJ2JIF7rpY6Kjxfn1nfGkmjGbxHAdHi6wRlBRijFB3gpxyJi
         xZOXTr+W4M7DseMPRpDqVb0VHtUcUF0/51fe7DLUvam1nzxQ5/+knPWoz49GcQIk5/xe
         PiNQfq7+B03jPKOshRH2frhqEkucPV9aBbwJMyiRwdZpqck4p6lpXsIHfUg4d3o4/D/o
         vjjLI0+C1hrKKnQNoYsfrh449pmDHbE41znL3BFfkbEtATJvY23dYfxrMaDyy9IcDAlA
         yXNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701359799; x=1701964599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PaHm7z9yY7JhEbhzyWmBl6MrUO4DRuFVOID91e7Rsas=;
        b=d3yTa9X+jBmFdwT0rbyyQGmX/vG5yxV9ka7t4esVs2qlEq2nPThDHD3AyzO4h9lwh7
         fk+jsfq7wK+H5Vgwy9wj9ODevPmmHfF/eCU0H089L/k/djyu4NtQTe7iSixrM3oYf0bk
         bvkpwT/dvTb93MS228eTf0Z4+HUudvwlTUW2zf6DmzviqVXZBiyK/qM86U/+vqyex0F9
         Wf8BA0oeRKh4SCrqQETLKNm5oDnWweRif7IPQrsb7b+VZBAcUDWA/Ok8YeAm3T5c9Wnj
         oUD44FV+fSNsvIj/43iPs3KS/VYHJ5Ez4ASsM7teaQoVGtJn9XC5D6VaXRzUIUF55gC1
         W/KQ==
X-Gm-Message-State: AOJu0YwZmcOhUoSeBmR18WduWFjV0kQaVUdsGvsNylSufgIfs0IPfU3y
	4F7ReisjxMvx3yjxZ7sww5C/U3NoG1U=
X-Google-Smtp-Source: AGHT+IHRrQ9qQNsi6yG3nqPiEdlso2YvHwKneV/qHu4W+YUFgHARSucqfgOTC/owBcTkL1lolpTTlA==
X-Received: by 2002:a9d:7c91:0:b0:6d8:5a35:ee16 with SMTP id q17-20020a9d7c91000000b006d85a35ee16mr3439943otn.27.1701359799460;
        Thu, 30 Nov 2023 07:56:39 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id n25-20020a9d6f19000000b006d7ff27a47esm187852otq.77.2023.11.30.07.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:56:39 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/9] dt-bindings: display: himax-hx8394: Add Powkiddy X55 panel
Date: Thu, 30 Nov 2023 09:56:20 -0600
Message-Id: <20231130155624.405575-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130155624.405575-1-macroalpha82@gmail.com>
References: <20231130155624.405575-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_075640_139456_015FED64 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for the Powkiddy X55 panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/himax,hx8394.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
index 3096debca55c..916bb7f94206 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
@@ -23,6 +23,7 @@ properties:
     items:
       - enum:
           - hannstar,hsd060bhw4
+          - powkiddy,x55-panel
       - const: himax,hx8394
 
   reg: true
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
