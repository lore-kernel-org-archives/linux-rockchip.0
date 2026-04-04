Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B81BE63FF6
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Apr 2026 20:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gygVGbo9qn2/Y6SpCLsCD10SZAaay4cVOXBNfPz9Fow=; b=AnPW2oL/r9PGs6
	RyeQlZLfa7qpwzEwv9BKaSInShdcUCftfrj5CGmAcJB+VBSviOqd/gtpsELCOISF+1kIuB6jU1c5A
	fRHIBSf7ypz1iKkHeFALjxLn1S9th77yyBLiuzuH53mYVYimedVgBzkal6T1RSjsON5pckK003a24
	ZGW0KdnLmXZTetkoKgveRdzg7GJsJV6WDpXwPu+dZ/MVe5Bu3phcz4VtLZD41Zpzpuf1rN9M5ZokU
	yrO7NymFFA/lSCEjhjEp4WK+4VelTB+MnxCB12bafCgEI08cWRw453KqQCBm7Vw3PkNhDtKXSva31
	b1T31WZ3v9Z3Rz1NaFNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w97Ej-00000003ifJ-2Vak;
	Sat, 04 Apr 2026 20:04:53 +0000
Received: from mail-vs1-xe32.google.com ([2607:f8b0:4864:20::e32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w97Eh-00000003iez-0HS1
	for linux-rockchip@lists.infradead.org;
	Sat, 04 Apr 2026 20:04:52 +0000
Received: by mail-vs1-xe32.google.com with SMTP id ada2fe7eead31-6055a0414d7so902261137.2
        for <linux-rockchip@lists.infradead.org>; Sat, 04 Apr 2026 13:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775333089; x=1775937889; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1MQ6/dIVlDkLkhz7sEG8ZPD2tsrLrbIS99Jl3sqf2Sw=;
        b=eWgFHp1SxvoAhlxgg7UXg2UKbWx2WgERj02k+3HkIpDo+cy9MSodx9/7DvAYc8JcO+
         Z3DeRPCLIKed4aw5joEzLBuBzktZ/CpKXFGly8C1x9GdVHbas3wrGDvEuHluB92Z5NaG
         vBlxUkrpAXHCLsuNMhRNM8TfNvDuOHR0MF6kda/Dpd2BEO7/yz+h1lSsWycgFrv7DOy9
         4YWUHH/dm2YSiYBYZ4gSc9yNouEICt6tXyHMvpSSs9MMBXXq0lNuQyqIcvbEnx0nBS3C
         SJP5Zx4RDuwzxpN/EML+TbHiYZ0RB9NF+7M4IHlqPPnDD69YWVAmGYTVj2lXKe9d2NjV
         rr2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775333089; x=1775937889;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1MQ6/dIVlDkLkhz7sEG8ZPD2tsrLrbIS99Jl3sqf2Sw=;
        b=YwS3VP4nBqbs3KeRjeivzSwOOBXlOqx/rEvRS/QqZu5QZMZj64CC2h1UEgZVUZoN6v
         6V78KliKJD1EOumVU8ayqeju2BeVCuNv1PAUsOAeTv6vArPL5eXSSX5Jf9hy0uL4l2rq
         bXQoe0W3FKqS6tBnh4l6NxNcIPhMLuE4o5RtJ9m6IHEjh97hFJQJmJvS5OAWtMmba74Q
         Ic/xzLVTcGYqD2uYXWMg3UBexhN05+HshUZnD1VhJPSRR04EgT2HHmUtaxNpEynGlYKO
         U4KagFGjB6Mc0koC88hRuc9bE4U6brovqkiRF2FqmSB/AWUGVKENDoL85cxLgirQzBmg
         kjdw==
X-Forwarded-Encrypted: i=1; AJvYcCV9t5xLt+L9y3Td99bzsGAl8dhn7RAzNoFZgBKFwm1iuO6ztQuZGvC+hi4Wa8D7Nz7BnL1R2SUbnpKnrZioWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9O0+LrGJ9SKmag53J/0WPo5xkDVQEDHp5y2JsjuCcxkrMV7ID
	H0uwFa1+l58w+pTQDQ4UgRVU9YbbZvRr7yS62+FqyNcB2bXrdVaKclKE
X-Gm-Gg: AeBDiesgh/5GUcL/vHByV6maPaRU2jxJyoCNWBMtEjLjMROMlYeBTEwZaORA9P5kLyV
	nJGlHmSxBHUKbdn6ud3lJZYCWW8g9wVwZCRsQwO0Xeom5vYg89Bxw5sF5sn8/Loq4fi05KM+cm0
	rHVttMwL060tsvpkvIh08BreoxOv0D0Up8izQfrR1F2x5Xlu21n3gThU37xpxjSOXodlWl1tLnE
	WIwHZO5R/UMJDN9F8zMyeV6hCmylaG64Z7w71nMMgBgW1AZkT9eZ/fBO9eRIfwLMNMHkOY4+EKp
	bfNA4wye9WNHlp8MSj/3h6sG1yV0ZZZ/6qIlvv1/VgH/1iYe465+N/+fI8UoYLO6B3ZILXDSMt4
	cJdhZCNRWLzHujxJsofs40BDc6zfr2FOtR9ieblasrmLAHpbLw+jCNasDqCy0xvHabpo+LfYubc
	d9nipAQxIXoP2xjg6HF6j2/FR7nJH+kiIIbA+LhReJr/CDEVHLVTRxEFZ3VSW94Slf6i1mnA==
X-Received: by 2002:a05:6102:605b:b0:5db:fe0d:7fd5 with SMTP id ada2fe7eead31-605a4d76e3dmr2210872137.10.1775333089480;
        Sat, 04 Apr 2026 13:04:49 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:fafb:5a7b:510a:6309:f015])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-605b214b45fsm5120113137.5.2026.04.04.13.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Apr 2026 13:04:49 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] dt-bindings: display: rockchip: dw-hdmi: Allow resets for Rockchip HDMI
Date: Sat,  4 Apr 2026 17:04:34 -0300
Message-ID: <20260404200434.1954651-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260404_130451_138098_083C3BB7 
X-CRM114-Status: UNSURE (   9.22  )
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

The Rockchip DW HDMI binding sets unevaluatedProperties: false while
also inheriting from synopsys,dw-hdmi.yaml via allOf.

The Synopsys binding defines the optional properties resets and
reset-names, but due to dt-schema rules these are not considered
allowed once unevaluatedProperties: false is set in the Rockchip
schema unless they are re-declared locally.

This went unnoticed because most Rockchip SoCs do not wire a reset line
to the HDMI controller in their DTS. The rk3228, however, does use a
reset, which causes dtbs_check to emit:

Unevaluated properties are not allowed ('resets', 'reset-names')

Re-declare these properties in the Rockchip schema so they are accepted
when present, matching the capabilities of the underlying Synopsys IP
and fixing the dtbs_check warning for rk3228.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 29716764413a..59fb084bb4fb 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -113,6 +113,12 @@ properties:
       - port@0
       - port@1
 
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: hdmi
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
