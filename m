Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A433606A319
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 11:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZcDEibwV;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.a=rsa-sha256 header.s=google header.b=msc/GBHf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYIQocnfcXqOjG2OrT1wkTgiZfPBkSLVZTWbgtItimw=; b=ZcDEibwVAYWwl6
	p3NnD68uJ/1P5Qu0Snap+8DQgymby4OcNS1epuRt8ZQ1BCBRvR16tU1rLj8Oas4o0Do5rR1NMbOqY
	TwbhEkXpAeZkzAZUbIFw/nmHn9zmep/QwDlvwj643AjXrBterfKBAKNaZYqYaD93bB02RRFhCgnPr
	BUBsmks4suV0Mjsqu79qOvPAhGZ5Q91mI9Ut5pPkIbZwdUCq3cMwxORCtD0yE4G1exs0yirRApYVI
	YKV7YTPoNGIryU0YvaZW5qpDf8c4fogcpEO0worceG+2NNDgpKamRIzfXl0eEIjY1Hd9Dfs/mg6J7
	f7dowxptIC6LgbpX2LJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ8AR-00000009ZG3-1GsZ;
	Tue, 20 Oct 2026 11:38:07 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ8AP-00000009ZEi-2iBd
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 11:38:06 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4a1e477fe16so15654835e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 04:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1792496284; x=1793101084; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rtFWxEL5l4gt1QqpB8tv7EMAYo01wp+6U1uDsFvBX1Q=;
        b=msc/GBHfKrSNsY8pUa+UcxYiLnO+4AxtE99M4ryuzftp4FAMRmXgBbTPzE3+aotpqy
         J/l8FQJj9yciYUqq1kY7NAzX5KxWIoDGFBecVIV3r+ff3Ukhw/I/+XQIZApgAGTWvV37
         FS9V3LiBDlRthq6a5RMNx4ncSMFraeXA2LvcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792496284; x=1793101084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rtFWxEL5l4gt1QqpB8tv7EMAYo01wp+6U1uDsFvBX1Q=;
        b=ENwqz+bdtxkLqeIkYqyY1sNJCE9N/xHoSq6Yt3vP8i9yaeSGvOnVJBH+xuJoA+s8Su
         rtIG3IgFRqTXTIN/eGEaUYFfpuurxYYLHMp2CYGS4C6XN/m4v1D2nhqL8oDmjwcmoVDU
         4xRL5RVeHtyUCc8ZTXa1UppGEKPyUzzD50NKodIPOO+pDfpWJFN6YmHfWEsZIwSYFFku
         3jXhMg/0Lr+FQTdGJBZwA2ofeAebZRpYQgqjgMG2B54HaEwJbuxwt3e+Ubp4FogslfCq
         bgQJQZsG3LMKbq49fgot9DXxs0YEpHczNYfq/eJijxsIW4fsJre01zhx0p0AjBx/dQ+A
         7loQ==
X-Forwarded-Encrypted: i=1; AKwUvBxkmCDEdeQCuw1f0nxqfm7hdBAV44IA5bFe4b3cYPriZvP7WyIiZCvJJ37K4/54zrL/LfwBEOypOWJNAvq9kw==@lists.infradead.org
X-Gm-Message-State: AFq9FYL0sGW8Ylw2bwKHD4dpQacGJj5gPgemPFXjODH2MX/UvuAAjAzh
	oF0I3s8bYJdtnECJxzHssyCurcTtvm4RTmAkO69iVoSDnma2r5CgX4vFqF/BHIWG4Os=
X-Gm-Gg: AYBFou08tqePPjNCzXg4ybu8N2WYnE9ik11vEWjnc1LRehI5ETSpul1g16ETw6gPsu6
	OjF/pydmWIz/6Vfov4UoomCYwdCHecUV3zQ4a+DwQPl6hMDW8hYGBO5BECFMkE6/HwGHaJlci/F
	/AeLvjIhAF7FJk6Wz+0o30uDaF1XeNIl5cyC1bN89Ebp+se9OQXlrZytK6CFXxfq/4O7Lglylbb
	SlytreaI5jn6id1cAeQUk5rkEwgxbpqvkS62lkFytBnzbV43Vg/AjiaqdY9ZLWs8SvMwsZEroo9
	JE1NOIMHJuSRW+cZTv8SD02muexyah4W+FHd0ozThausaNNEqNgTT6tUrNYtJX6jSOmFV5SJt7b
	Is0pk3mMd+pwI13XPI8QYDGHVFZQjuwGRGTCj+0HZkDwVWRtGT9OBPIt1vWxCgrP3nBnJtpo8bs
	/RodQgsGoR6L/aipmTS8Qtl2jNn1gQ5hF1sdQ647SyXC93QSYpp0cHn4Lt2qnVBCB4811LKejiu
	JYGXX0d6adoMFgpGsGTu+CyH1zh948CRrjYt4JNz2B4yQoRDZlLrhz+i5Kt00amD0Zl07K5bZz+
	sgiAzd/v
X-Received: by 2002:a05:600c:621b:b0:4a1:dfd4:9429 with SMTP id 5b1f17b1804b1-4a1dfd49552mr178412195e9.31.1792496283635;
        Tue, 20 Oct 2026 04:38:03 -0700 (PDT)
Received: from thinkpat.amarulasolutions.com (host139-112-32-195.dimensionesrl.eu. [195.32.112.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d83a099sm4709728f8f.57.2026.10.20.04.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 04:37:58 -0700 (PDT)
From: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com,
	Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Axelera Embedded 111c
Date: Tue, 20 Oct 2026 13:37:16 +0200
Message-ID: <20261020113717.189082-3-patrick.barsanti@amarulasolutions.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261020113717.189082-1-patrick.barsanti@amarulasolutions.com>
References: <20261020113717.189082-1-patrick.barsanti@amarulasolutions.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_043805_702304_6EA0195B 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Axelera Embedded 111c is an SBC based on the Rockchip RK3588
SoC.

Specification:
- Rockchip RK3588
- 16GB LPDDR4
- Axelera AI Metis AIPU, 4GB/16GB LPDDR4X
- 64GB eMMC
- uSD slot
- 2x SATA ports
- 2x Gigabit LAN
- 1x M.2 E key
- 1x M.2 B key
- 1x HDMI2.0
- 1x USB-C with DP
- 4x USB3.1

Link: https://axelera.ai/axelera-products/embedded/111c
Signed-off-by: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>

---

Changes in v2:
- Rename the board and its compatible following the name change from
  "metis-sbc" to "embedded-111c"
- Drop Conor's Acked-by since the compatible has changed

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843f74..1f2627c53c33 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -120,6 +120,11 @@ properties:
               - asus,rk3566-tinker-board-3s
           - const: rockchip,rk3566
 
+      - description: Axelera Embedded 111c
+        items:
+          - const: axelera,embedded-111c
+          - const: rockchip,rk3588
+
       - description: Beelink A1
         items:
           - const: azw,beelink-a1
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
