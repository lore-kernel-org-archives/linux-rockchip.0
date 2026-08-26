Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25E39C61DBD
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2026 12:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScraBR2w9qaVTyuPGr2QS0vYqleEAITJrJnACeUflk8=; b=pPYFsbyL3Z1Ane
	WXIYAVzjAncYILWI8zrfzcgvZHFOgm5Ngpt84gIQcczszG8DPiGayN+RJP8U0YCAo4rc5FWDedlvo
	EU4m4npVLBNitwT6KI0oWEz48MFD5N1U7MkCBGhRKjOwR1XJpg6n7c/Gcd4dmBWyXNr5KzBfSMlyh
	SvakOvfi7O7hOYcsXWW6usu9YhQWIC97rcLng0S+S7sHHGf/deNaFoaQwhhT6vXAwPFRVKxVSj07S
	R6qOdzYHTLBWU395xPzy6KnZAQB0ajSOFZ1qnH/3qqBhqBr6uAD1q+zzpiCZdHJZTLUISA1jU/7tB
	wf3/A6pGv03MhAAhhTgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCs5-00000002RWA-2Pbg;
	Wed, 26 Aug 2026 12:36:49 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCrw-00000002RSf-0A9n
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Aug 2026 12:36:42 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4956242332dso6865575e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Aug 2026 05:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787747798; x=1788352598; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=h15otk3ApxPlz7+e1yUXssJQT/RaXRzBb1z7TnhPPnQ=;
        b=FPzFBX7YA7yORGPF76J6qhBCDfLfVuTCFiIz6buJhdr3T797OCaR3Kl4uwdGlCKZ+k
         LBhFpTeZrqFpWiYdt8ezfd81bwhN3BWqdAWPc2WaV2pkxlJTEH5LhfHqWTOAXZ8BpVhF
         5B4DvA9LePiqDbTBuP/DAkc+nAGeNRj6tT7RyGwlvDFrdFsx1xP5TXN4MbDadKMaTTUq
         0AogbU8Ycdl1JHYORFoZHPaKbUPNAzwQBFZyfLOOBSn5EyoTDVOgX50LXpHSILVR9aZl
         GvbAcRwkOpDGpdaiRrh3nr5xLuoRRmlhP/tMpqibseWqih1I83gpg+2do1xom7nwwqn8
         t8jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787747798; x=1788352598;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=h15otk3ApxPlz7+e1yUXssJQT/RaXRzBb1z7TnhPPnQ=;
        b=NFf70hGxvmC+b7SuRiLjixRSrn+Mx4efDIXCs1Mil9+C28lAlyBgFgF0KIyCVyU22x
         utO/rl9m2rP/gLBjQOb8U6qS2REeiHiKKYTnmoCwa+zn2pHafjyndmzq5y0RgqwEFlqV
         f3xKv7svZ3s+ecVhFRfXbN/FeFoiFQm46QVSqTwwRHYeGfjodib6/W/yPUH/BKY29lOC
         lxCJ/UdS0KEKXwnCEaloXskGtLavRgbadKa5SsBh1x7VnAvjibayNlTPdHm1mwY6L5Nr
         n8jzXvj7IuAGhqaImkGufBgYoZG9NmhH0Axfkt2MElvePOd8/8ntggvYGJuYVEO4pxYM
         Cozw==
X-Forwarded-Encrypted: i=1; AHgh+Rps6YaxXm0k5NCj1p3TwUfZ4Z96RnICCQyNhUfn2SGg73MEQ26S9QGpU+1j1Z5o8qr6IO/dw7op76dgvrBOxw==@lists.infradead.org
X-Gm-Message-State: AFuF++kRvzMoyLkLgHGoLJqEN6sTW/hj/HymoBFlfi8tDTNkofU2BGE4
	VilOjMvQNwG3ZlFXHcWACNrgNldp04MUpLqvNYjN0QgfA8lLJB1JsKee
X-Gm-Gg: AR+sD10A/gTQxMngGiIapkNrIqcKnovaO9D2+Fi3erIauy9rHD4xZYbZBcdovkIWiZw
	b9XvBQ6JFql/A61uPuk84ELiY/PcFYutBedadB4YvyE4++Cw5oDQG2p1z1hGstHNaFGDlPUL54E
	ezDyVa48qTe4055e10tK6HwE/Nia20kwZst1LXBwlg69Vnd6UPXWJIOWWbaiNLXmaqDEPeL0hZ1
	1h/wonFitqi2cWeYw5ui19ehKfZdCyJVXP/rprNWajA0M1wB9xG10EnE1wUlHQPwjgDINk8DO+v
	/jiop+s8IU1tl9A4DwHGpCY7PlCW4uxmigle4KpVKFs0rpgda5JFt4Jerl/fVGAgydeKEnSaUlp
	MHDN9TH8+8yy5cG2SR4twTfBa/0aVx8kSF8XSRc0fLyUxK/PoXItaYUHnNQFixGCvBEL1SClEie
	pngBeJtJAv7Evc6OTVqktgF8OJVWAAXFbqQkO02rmnWWMrqGwJ0f0++kQNwT74kbTaYQv3Kbbz3
	vkte4M4ZxQ8uuNUR2SFEi8/wa89UAaPQlK58X90XGeyVhQ=
X-Received: by 2002:a05:600c:4f55:b0:499:78b3:7b36 with SMTP id 5b1f17b1804b1-499dc720beamr60889245e9.11.1787747797933;
        Wed, 26 Aug 2026 05:36:37 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499dc977692sm26009465e9.6.2026.08.26.05.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 05:36:37 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Wed, 26 Aug 2026 14:33:49 +0200
Subject: [PATCH 1/2] media: dt-bindings: rockchip,rk3568-mipi-csi2: add
 rk3576 compatible
MIME-Version: 1.0
Message-Id: <20260826-csi-2-rcv-dts-v1-1-bcd8d459684d@gmail.com>
References: <20260826-csi-2-rcv-dts-v1-0-bcd8d459684d@gmail.com>
In-Reply-To: <20260826-csi-2-rcv-dts-v1-0-bcd8d459684d@gmail.com>
To: Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787747795; l=995;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=39cuXfdfai3x2o9ivWHSxZIa8pSWnI/ihkiawNHpzqs=;
 b=iZynIZGdWCEmQV/WG7vShRwpR0bcPUXqeWta922VAcZxqHnUei8WHxNkN9GrcPAI7U/Trm/yZ
 JmiSpCp/597Cqv+EyunJrWOvfHd4hoLMDMSZ8zHBmKoYZX5tAfF6CDQ
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_053640_200141_08EA7816 
X-CRM114-Status: UNSURE (   9.88  )
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

The RK3576 MIPI CSI-2 receivers are compatible to the ones found in the
RK3568: the register map is identical. Add the RK3576 variant to the list
of compatible variants falling back to the RK3568 one.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
index 8bfad0fca3b7..1898f3787a98 100644
--- a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
@@ -23,6 +23,7 @@ properties:
           - rockchip,rk3568-mipi-csi2
       - items:
           - enum:
+              - rockchip,rk3576-mipi-csi2
               - rockchip,rk3588-mipi-csi2
           - const: rockchip,rk3568-mipi-csi2
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
