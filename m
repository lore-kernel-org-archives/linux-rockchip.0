Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36F8DCA5FA5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 10:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHjYW3+3VYoz03OnBMPUFj+nspwOV2CyU1UyCDrVsBk=; b=sB+NKg9Xnxyg7G
	FUK66fJ2nWOfk1D/dlfBHaqPI/39c3YKVE/052F0RPa1Jq9k491FBmZulFqOc/pZ56KibAM3/Xnrr
	7FSmFFbWzjHngiF/8rdWhcH1IAzug4wFuIET8matLzxhrl7pCE6+GtkXzIsSgtiy7j5slcqSCRaQB
	3lhZicW72W+f/DCeRGWybHVeLbu5MdhSoeQ+RJc9cBX99P7vm03kBHk/GyJODef6bOSdAZ+gSUPNm
	NvnBjUzaUG5CrLMbJxBCnJwP9djKPas9OhrHP8qZ8frobGmXempKuMnZwdjRjIgnm6dT6ehiVCrZ4
	sqxywq/HJU7qpahX8izg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBV4q-00000003A5F-3VmH;
	Tue, 29 Sep 2026 10:28:48 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBV4j-000000039zA-0SQ4
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 10:28:44 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-4a00d8bec5aso4461775e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 03:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790677719; x=1791282519; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QZTRsHj0KfhwDqKEq7QsxYeKNtzFQI0k4FjiWBg73As=;
        b=AKv8UDXxRqw+yjcdtsaPeHG5GuArlJqFcDOmNpTv1aNBePnydvUYbIExh6aSxSokak
         FqzPq2dWjpkg5vLRTGQnrMBRR/oqUyu4/tarMnP1kLZPhKesQQJ8+NLyRjsjAmMAOXmn
         Ty+pczrhKnNtWrr7ZlZAer9qRknFOg8f6Qh1OHXgOulL8Oo6MDOMlisxv6v+WY/kobUK
         gYZuOVwTcpc4LotbMuYD1gRvT+Kinbos8yJCS3eT8zfqC81BWrJpDWqVf6IdHDqAHozV
         dWTSfliPou/Tl/cCboOaF3QQdSmpS1ihYQgB+lzdFDntm6Zfwv2jEqRDLFBWJyOUNEYW
         hOoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790677719; x=1791282519;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QZTRsHj0KfhwDqKEq7QsxYeKNtzFQI0k4FjiWBg73As=;
        b=AhliXFf66ILo0iOpM9NEPqTVwRZ7fRZhxYMzLWFRZIrr3lIfNDC1OjZyxEsd1c9pcs
         m+gcmB9QtPAaWXbuJ2736r4+eztne/7LaD1ZU5YsJsuse91bpGhUPqYBbkmknBD3HjHE
         TQY8iTbYgtGB9KdQmBGrjOmAgu+O0gmuGQos+4c2Bj7qHfRQ1Ui1JupY2pv/c+Gcl5JN
         TTDnc3kTcshQlpUjhC6+r7V63e3bA074UMa6UddbXwher0VdpclkUEvaLylm4LmP8zKS
         AP6nzEFOMkUd/lmCLRiHguMraPSZzo7ZK7QoZFUeo0plojl8xdvh/6BsH4jKrzap6q9K
         D6Zw==
X-Forwarded-Encrypted: i=1; AKwUvBzKbEWD9rL8gD1mioBgR+KwxcOm5OWQfkK8uKxoVXSYrKk2c4wQLDLxbiFYtmS3pJXYyf6Ef0fX+xixSxBfyw==@lists.infradead.org
X-Gm-Message-State: AFuF++ncLaYANTIOsGh7cS6gw/RCMxqlIO6kDWonthndeYi1wmjythhA
	aFQh7ZztkMURooLV12gL+Oi0oUyjTDFqNtGU+SPbG/W6K0Wq2bGE4+Fth8k4r1JibVg=
X-Gm-Gg: AYBFou3xc8a/skOMhf45kMwfmaniAVZ/KUYcLcTFydu1TPb5ILxJr2fBw4YIHQ0Lwbj
	xlZAMETF+5zOWjNtABXgqEe2AzVG236kPxu4cl7pU4O7G9CRMNfSpuaY3zONq76FOBBO5dAsmBM
	EyzOeS9/M/S9uurbJD/rpa4YthfNwK74KzMJM/EIBLI2vRY+S0L9ctbFzKZ9divd8nDp9Y8P/kI
	oBB19JiY2SWQp3l1MiAjWHK966uGI3xBfdGt+CzAhm2n/dsNEPxIf4zZ2OnjkHZdvUP7BmmTmlc
	bRb+kYihMgKjgpCPk2UgU55VAgPRxUiIXpFqbTtiJS7YvLcBeM6X1VfoW1bSfYL9vVoGaqcgKtT
	fOEJxTZ/v2TQZZ4ZuXcMs17hhUqm8BJ/CLsmOiHqRTNtMtzYwJI8C8cxYaA7k2Nn6931nOa38QW
	qv8JBu2gdkwXg35g2V12TVYFV6t0MK/kKzUFZ8W3wFKFOi4+IQc6BBe9qmvewbNRyFZGx+kixrc
	s8viuY/lThSY5Iu3Q==
X-Received: by 2002:a05:600c:c16d:b0:49f:cac3:c68a with SMTP id 5b1f17b1804b1-49fe66f9ff1mr251267355e9.31.1790677719072;
        Tue, 29 Sep 2026 03:28:39 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.93.183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a00cfb479asm66579305e9.15.2026.09.29.03.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 03:28:38 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 29 Sep 2026 14:28:19 +0400
Subject: [PATCH v2 2/5] dt-bindings: power: reset: syscon-reboot-mode:
 allow supplies
MIME-Version: 1.0
Message-Id: <20260929-b4-rk3576-reboot-mode-v2-2-5a34ca72065a@flipper.net>
References: <20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net>
In-Reply-To: <20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: Alexey Charkov <alchark@flipper.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Shawn Lin <shawn.lin@rock-chips.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1537; i=alchark@flipper.net;
 h=from:subject:message-id; bh=QQGLNQvdHfru03RYinWVR9vfNnySQYKGE1jNzOfXc3U=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTtnnTx1Oz7jZ82Be+vas833B3yclvwKsWj6+zvTJzy7
 ezV75aMGzsmsjCIcTFYiimyzP22xHaqEd+sXR4eX2HmsDKBDJEWaWAAAhYGvtzEvFIjHSM9U21D
 PUMjHWMdIwYuTgGY6p/6DP+UGuJyZT8kqW4WFf796lPHnY0+KwQrdB5kcL7fxqwUEdDE8M/I7Np
 NSdvgt7NEXh1LbsxIXixqctRkZr9Q6hGeo19OCvEBAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_032841_227828_01D6E033 
X-CRM114-Status: GOOD (  11.87  )
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

Whatever program that acts on a reboot mode runs before a full OS, so it
may lack the capability to enable the regulators it depends on, and a
reset that preserves the mode register generally leaves the regulators as
the previously running system left them.

Allow a reboot mode node to name such supplies, so that they can be
turned on while the mode is being requested.

Tested-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 .../devicetree/bindings/power/reset/syscon-reboot-mode.yaml       | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml b/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml
index 79ffc78b23ea..5ed70c87269e 100644
--- a/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml
+++ b/Documentation/devicetree/bindings/power/reset/syscon-reboot-mode.yaml
@@ -36,6 +36,14 @@ patternProperties:
   "^mode-.*$":
     maxItems: 1
 
+  "^[a-z0-9]+(-[a-z0-9]+)*-supply$":
+    description:
+      Supply that has to be powered for whatever program acts on the mode.
+      That could be a boot ROM with no access to regulators, and a warm reset
+      leaves them as the previously running system left them and not necessarily
+      what their expected out-of-reboot state is. Any supply described here is
+      enabled when a mode is requested, and stays enabled.
+
 unevaluatedProperties: false
 
 required:

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
