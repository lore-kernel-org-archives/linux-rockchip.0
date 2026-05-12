Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68166CD4F3D
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 22:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4INeISzKYlcRFOLIK5ntUGIUfOWsYfd0AtkL0XTr1FI=; b=3hln8y9jk3BOsh
	JxEXvzTq8lXhXgUIXrLj/QXTp+IxaDFlBuSUpLWIQBsMWV4K3QRw1ZwS1x2me3yOXK58uPNmFwdxU
	xEv49MbzWiRmQiLOqhJ5Dx9rISPdt54bP8mKn4gGJIzrd0BwBrlKpQ4h4sW9S+hcoJ0NWac/W4+3N
	IeU946Ioc/HiBe1LrIg58lVY74SvC8jy71i5DaJDWyGqJPYsZKcl9aAFQH683KT4dCbUP0x5Y0AQ4
	zy8DXMlMKOelf8dWK4g7JGbci9dnGpBB18Bbt3iTFSc0rPIw7yBOpyhC+JcP/36OCHqIOKDQGHsih
	g+WxP+LMUXewyjaeF6Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRT-00000000ZCk-2QYe;
	Tue, 12 May 2026 22:19:07 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRQ-00000000ZBN-32tP
	for linux-rockchip@lists.infradead.org;
	Tue, 12 May 2026 22:19:05 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-479d9b155deso2179724b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 12 May 2026 15:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778624343; x=1779229143; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A10z2V6mAiVce4BytYqy/qmrWiH198BizlsZzZUSoec=;
        b=oyvO/ung879pAS3/sUB1qPVzAtw00P4CwdRTfLHJQEJ6btWWmpiDBm8VpgpSx4I11K
         mqoYpRuiXh7HO8Fv3i6k4FTCIHBsU3SqnqJMNMil+FrmN3nEI+CXTnAc2Ck65wZFshlE
         Hc7zfbEdtD//s7l7nbpwqc79G9nvzeHI0Zz54VpVK8pNur5rBF6dxiEaQZuWzI5bRerJ
         SkJ90Sv2Gt+xf7qZUBRbASg7CbMR/On+T6W/My2zEWetjh5kiNEgijPbptSMB4YUWaU/
         TVBJsr36tZJDFU2gjuiqOWlL2vp+2TcgSppfMle3om5AJtCoArQZTC7WGTkenqvvJ4uX
         zqXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778624343; x=1779229143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A10z2V6mAiVce4BytYqy/qmrWiH198BizlsZzZUSoec=;
        b=DxGa3YyhA5IVHifZmwgIQWOd1wqBmE3nKFjotkJm20QFHAQSlHZKf0k7zjIFIv+liV
         8yjWW7iLiNkUPivQSKPdpTz3/G3zankUtKLMBLbRl+NrvSOzntACwkEgOs4gYn4lOAVW
         ukwqAt1ud3srAb79Hy7JeEoGICEhBFa8gcPS9/RA/1dToTBIng71fZcNh/JTdTYCuYI9
         rGAr5kdJRFwdFI6Lm3C6ifX3/GJ8yR5oOSTeXQzzNz3uZjuvdfvzir39MkWI37eiikNp
         UZkeicvAXcUfYvpkUhPeXobay+gd52A4jTRNWWPmaanJIR0gB+Xbca3UdYvVvSmaXcwf
         Tzrw==
X-Forwarded-Encrypted: i=1; AFNElJ/zJGf92hcBFy/tXvqKUbbQ1hqWK9SRi/tv7mDBSSYVj/ecfbCwfWs4DFWIEacXSyvZ5HfTnwc3Eh/2HygdGA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwROujC58wJNBvBJEQJ+wPow8ggA59P0wlkjzeBevIG+TwQ64lQ
	w6b10logWNCh4wfufEqm2y003uxpR1ZYfX4iE3t3DK8hWvRa3/stvwwb
X-Gm-Gg: Acq92OFviUM4wZtnDv8KxXVY+YtT8G6F7upN45Faltez90JgMqGzes4TG1xDL3MWsQi
	GUyBeIOVCOzJNUYLnrLdxmG3iIBBi5mCysMY39wfqLByOMgsS1sMxkkIcwOy62hAmp5KJLJ+77W
	PUGp8R5Vjg3ntUDerEZVgH9TdsUAqr3tLrbmyUW0T/AEz+GbFtzowVSOT9J9jgLKYFmPeu3zaoV
	bLzRuS90ZDn9EvZ1wb5tbkBxQavLRUjWi0KgEv80g2A3a5Y7boh4xwWJa8l+CQWs43kBkdw1aCs
	hCpf/UWJ/2ZJiYvpsGe98abcV+kViMh9xONZ1evNC/iMDPhugknxV30A8nWYTgfTf2c6V1kVH+i
	71V5BYQ3hJzPPfxA/EyJohLGWhgA5bmURMH6SXJNEpCkwdJHoeCWxepnoPCTSF8xl2A9GTLcdjX
	ICrRB3Vr86d+YifqxMPfHv
X-Received: by 2002:a05:6808:444b:b0:479:ac7d:6da8 with SMTP id 5614622812f47-482b2b2187emr786356b6e.18.1778624343187;
        Tue, 12 May 2026 15:19:03 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-47c76986f87sm23291473b6e.13.2026.05.12.15.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 15:19:02 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 01/11] dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
Date: Tue, 12 May 2026 17:16:22 -0500
Message-ID: <20260512221634.256747-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260512221634.256747-1-macroalpha82@gmail.com>
References: <20260512221634.256747-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_151904_761533_BF684563 
X-CRM114-Status: UNSURE (   9.14  )
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

Add mount-matrix attribute to schema. This attribute has been supported
since the first revision of this driver, but was not documented.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd..9b2af104f186 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -53,6 +53,8 @@ properties:
   drive-open-drain:
     type: boolean
 
+  mount-matrix: true
+
   vdd-supply:
     description: Regulator that provides power to the sensor
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
