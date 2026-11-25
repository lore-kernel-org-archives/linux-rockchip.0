Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B50606A323
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 11:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oCNMmvrn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=WwPDdvU6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oPphAkdYXX5Zd1lNdwDMDzYo1nxXbV6pijOjV8EUvc8=; b=oCNMmvrnYulB9wHAYVxv4nsney
	E3mVeo0uOXnOV7eWpd3X1kRNKGi47rRAruyIePblzChOma8nNL69IqnQW3G1k48j4yAcmQ83rCARJ
	hyoHlcG/Tx2srQ25sQfB9pXu2VkCYhhwrbOLCIf3XtQzl+sA8r6P3NHU8aYRAxiP9OeJHZz01HaTg
	8ZWAVh8fvoAvQs8S2g91KsQazLodTJsMWSt3gE46JuLvUkrDovsMU4N9ZipcjZ9IvrSQD/Bf2YcOV
	avXbR/v/Pq7CY7xyVkw5MbPfL6c2boHTlZwaCR+UE9LbVISIm3S8P8KbnkuS+RxwFyrvGKRUizZEF
	jZqZ87rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBU4-00000009hFB-0ovW;
	Wed, 25 Nov 2026 11:48:20 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBTu-00000009h7n-2yLW
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 11:48:11 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4bb6ba3b244so58081305e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 03:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795607289; x=1796212089; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MbHDGc/ZnLqrXna7v29ToXIuU9r0qh7j1r49D/8WzWk=;
        b=WwPDdvU6pCHv8nK/3/KUdIusHpBkf9jZAvpDAgOxLqt4spcvh7cat/wMAKWHoxLkvU
         LKkqiNB+PzUA2zoUKFVauxFSIvLQOXitEJorNHDkQ5ClwiOzW/j1/nnwiHUOktSN/NO+
         8Lv93heJwn3Ylfct8sBuFDa3G5Ym/gEOwfbB6WFW2GUxPgLPNOoZhgoWvHxCC5egsdqt
         zCcPyzDTBjbDIqvqkVCTvez9PvF9P8hwhR/2nYvUtiCT289l8oebJMLOzdPytQur11BX
         /zDh6y/uvoVfGkHdz138GUjCdNfL8kgggN7upkq+clpaqnffx+8ijJVHIgauEvwcc5Nu
         m4Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795607289; x=1796212089;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=MbHDGc/ZnLqrXna7v29ToXIuU9r0qh7j1r49D/8WzWk=;
        b=unqL25QxbRWGg/slcviS2tjC9L2cgbA1j4zyeWca33uA2g2qrEQQcx90A+lyjI5gFe
         FW0xkEsb++yDyfBwAwbgTHKToTrTRiwe8NicmzqYW5AR3vYovIH8labyF1/42kcKT8P+
         pt4cKYbtOJ7JR86KeAyM1reJRhxDAnk2UeAyasst5WCXc7lPlyXuADYMWW57bdYz/x4c
         OBFrJ64A/J00Lunmy8znD0Xahx+GxIuC+mgbd9NyZzYpsY5apTtnlE+tBtQDkVTuIE2G
         5StvoCTbZRBBLFA0QYrGOzUeUz1pMecy4dsxdXTHDFfpZOrFZwE2jVhT04yJuY6Aydx0
         159Q==
X-Forwarded-Encrypted: i=1; AL+hErFb2EkqGi7ydSsJcOgmDHaimSc6Zo8791sQSOcV1EFhkGu2YKfe2SXHZwQcvQFvYo8hs8APCRDftKqfxHeufg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+4gPaehbU2GdhnqZiZVHGYbmHbiLT44Gt2s6rZy+VwFp4g5a9Z
	H3n7jBZXNRPHlYew3STOmqGSYcRzSAeTeIRXepkgYnFDtTg5kEl4uwEr
X-Gm-Gg: AZFdTZfrC+WP3v0IvRlp39ZK4lPojP4OlR3l43GXQWrULiF9iddnsYbMS1wJdOHpOqm
	YQQtXgimCil7/gopMJlj5acY9tFm3GxLH1IJRqT74aFqRgDAVuGrH6TKOrG+URH4gzEmQFUko5Z
	v0mdymxlH5OvEkjM1uP3pkBLCy65sh9xJxh5rMWaq5uPywyT51qZpc1tKjiFzclJ3sOoKV/FnUd
	RY2sLOSjG5gc71GY2TqbN5zzaugB8f30ETYs2ZFKgxV7Oyrcn5NcJpfCTM9WPdFC5WSJ7HOgdBr
	/8aIIhIPHqacMpuJeQZQ04FxwF1PE3pbigjdrRMPXBGKXKXF5762ZufVonczt/XP6YodL9P1f9U
	LPZMnP/O55vKNXiUwkmsBoqp54PSvI7wbHGfbdJfVGcFjYH/o/9URzIvCrUmOzXA0KtK5BVDd9d
	qhp9GTYOWHVSp7P3k3bpq7KACPknTyS8aY2g0IkFaAbaV9Vuqtrr8BgzANSe/nAl4GTFAcxz9Bg
	tCLi6paunOeLT1MTJ7SrzREzRVnqzHbwrU7+SeCLsfTZmXGlhJjY9PqzSdKdrY6OHphogiqQHCB
	1l2jq4e381WzlvTWkoZ03+g/nTsL1DeCw7rXHiGyBcbQpsEwaYbvZVIZBxww7TPVq39uMO7dGVP
	OHlozGm2H8FjXBwc3FG4=
X-Received: by 2002:a05:600c:6748:b0:4bb:6a2d:b42d with SMTP id 5b1f17b1804b1-4bb88824e64mr347991015e9.31.1795607288615;
        Wed, 25 Nov 2026 03:48:08 -0800 (PST)
Received: from saeedvft-ubuntu.tail2d4112.ts.net ([46.100.16.26])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb884c3063sm514068355e9.15.2026.11.25.03.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 03:48:08 -0800 (PST)
From: Saeed Nourian <saeednourian82@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Saeed Nourian <saeednourian82@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Firefly AIO-3588Q
Date: Wed, 25 Nov 2026 15:17:56 +0330
Message-ID: <20261125114757.654051-2-saeednourian82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261125114757.654051-1-saeednourian82@gmail.com>
References: <20261125114757.654051-1-saeednourian82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_034810_745493_F3BF82EF 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The AIO-3588Q is an RK3588 board from Firefly built from an iCore-3588Q
SoM on a carrier board. Add its compatible next to the other boards
based on the iCore-3588Q module.

Signed-off-by: Saeed Nourian <saeednourian82@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 744b364fb7..2fb93380dd 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -260,6 +260,7 @@ properties:
       - description: Firefly iCore-3588Q-based boards
         items:
           - enum:
+              - firefly,aio-3588q
               - mntre,reform2-rcore
           - const: firefly,icore-3588q
           - const: rockchip,rk3588
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
