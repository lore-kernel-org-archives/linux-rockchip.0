Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59102C4450A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cItYbWPuy0Z0J52eLjkbgO9vJlBqR8pxsgcfmfZmFvY=; b=PA9tkiaoWkXlpU
	uM0tfP5bnzZpfJZ5G0ct7fKw7z8+xDEUgXs9a6latm47lGDBgFNnFmpx6vEquvZa0quIQIFGK6x0H
	5t1BeUBosLqPW9X7BSE0yimjfV5FlEzYNN4O4IhWRwIYYoXOCmCq0+YssmrPH6Q7PbBo1XR3W5GEd
	rhg6gry3y/Qv10oYtas5mybx3uMZMJrYDWPz5LLz1o7rmdI+lGH6k8RCZY6z2zVbPhikaW9aFXukN
	UFXoAqr2GhkRc6eMxKhRvg1r1SgDS4T2wFjlUUomV7rMlfDswQFcoKKTfj5kShre5WfPfyhn12XSw
	CTOTLfjYHhMM1xDrWjDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjies-0000000D1ft-2kfR;
	Tue, 14 Jul 2026 19:19:10 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjieo-0000000D1eK-0bPr
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:19:09 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-7e9eaf04bfaso1704576a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784056745; x=1784661545; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BTBeOTYIOKIk3GZzx/H2GNcllpLfatvGrcCCGYprRVY=;
        b=dUkYe2k2GH8jk23TpRJcQKIsVnPvWxoxGup3qIiAc0DCM0vS6YfjpjG5IYltre82id
         oZRYtR5n5faHBKr3fV7d5znYOVB7K+H9aCOboOgTbRrynBJGKOsIzXgAVEXjJyan5QrW
         SP7hpI2lX8FZJuMC7kR+OBY3pQZ7tWJMyUnXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056745; x=1784661545;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BTBeOTYIOKIk3GZzx/H2GNcllpLfatvGrcCCGYprRVY=;
        b=S3Xn1HkH4Bsw7lwmbxbooYtpflv5aFHMg7bule9whedOmpqGUZ4PwHfr/RguPQXEwn
         C0HJy+/hwGRkcZyFDRPNJn/UhHNvrYx0TEoOgLx6uhoPzReoUwKIKYaMgTZwu+AN9Yc7
         faq/VfkwHCIcAC+Ny/C8nPsKJ5V/2iyl/mvTmOgNdJ3OuZuLGKnBi9AvgqwIYy1Aumhr
         taBknghFXSeN51No8SQAa97isidLg80wFv63zZ8zgT+QYlyWDAmOeVZxvbeBVSz5+sVB
         zSX1QZ01E1GP8apt75wWvs7SaMqebPWg8sMkhpqBOCVfk1LpKOasp2HZCxi26jVvnLbb
         x8/Q==
X-Forwarded-Encrypted: i=1; AFNElJ8f5OSYoTWK9UnzqyYvCw65N7YOQcGdkL5tWX1yFJQKz5khxK9Bfyh16Vi5vKGgHDfcUuqkwVQFIFnGvqVu/g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjERGgcXeliZuDMJ/c0LsRpj08crN5PHhdj9CvuWmxn4z3tPGG
	H/x9/GLiTvtKZ4XS7p2WwroRU962piA1ICz23FlNOZovhsnJkX2WyQEgoJ5/vJmWcw==
X-Gm-Gg: AfdE7cmu48jmVVldf1KVt+4K4QWa251jS6LS55xFF8zVy2RJqX3NWK+QAulZO8SaEXx
	ge7p5XpHRnjl3I8xBG8ookzz/RmnjmOI0bliJOFZoz+L+WmlD07BP6t+rlLuTFLm2amo+J7K40z
	ZaK0hsJTsg/GAkQ5Ri921FvfuT7XjQhMhEBujCgAP+dCQxlEH//V7oOTfFNnH0BSrO/aFslhk7/
	f3suwbKIYXn/SAnxUEyPfUScTLDNut84L3vVF9/IXYDT5d+ZR8EekXpRUB1K4lMtGLwXTXIRSyY
	N+hslr7B0r/9tlLMeObokcYrwoTc0uY0l+AwuKqp4m5Hg2OTjT8kdFxhqWeI0FeEHnU/DgLXxGI
	bscUDNcYDJn8L27gThyO2SbiCiM/gwiVH9lXGh37PC075bv60vAfh2tj4yA/kfX5N5BjpQuOrVO
	cR151n3NOWfcmXas6zHQ==
X-Received: by 2002:a05:6830:6a91:b0:7e6:e349:539a with SMTP id 46e09a7af769-7ec097aab48mr9268737a34.21.1784056745121;
        Tue, 14 Jul 2026 12:19:05 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcb3f2b86sm15713103a34.26.2026.07.14.12.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:19:04 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>
Cc: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-watchdog@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Simon Glass <sjg@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Jamie Iles <jamie@jamieiles.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: watchdog: snps,dw-wdt: Add RV1106 compatible
Date: Tue, 14 Jul 2026 13:18:57 -0600
Message-ID: <20260714131856.v2.1.b5339e64b3fe4338b3924ebd9dc0096904699744@changeid>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_121906_185974_9516A5A5 
X-CRM114-Status: UNSURE (   9.07  )
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

Add the compatible for the watchdog of the Rockchip RV1106, which is
compatible with the Synopsys DesignWare watchdog.

Signed-off-by: Simon Glass <sjg@chromium.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index 9d25f5e497e2..2b16b7c2787b 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -35,6 +35,7 @@ properties:
               - rockchip,rk3576-wdt
               - rockchip,rk3588-wdt
               - rockchip,rv1103b-wdt
+              - rockchip,rv1106-wdt
               - rockchip,rv1108-wdt
               - rockchip,rv1126-wdt
           - const: snps,dw-wdt
---
base-commit: 3b029c035b34bbc693405ddf759f0e9b920c27f1
branch: rv1106d2

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
