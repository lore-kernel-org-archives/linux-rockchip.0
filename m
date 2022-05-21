Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 470CFC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 May 2022 19:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H48vVVKGaO9AP8wbd0qAgJrczma5qMxjrGkKb5kO7GQ=; b=zwQnDFASh57ks3
	OW5irpj/pRySRMun0cg4TamyLG/MXYPoKCnkPOmWqrzf7DCwYt+35hDaWr7ZFREbl5Erkz32W2GTc
	83dEdQ6Nkr7+NFdpjLdqHiLyJS71CbSb2E8Tnf+yXXmRTegmw74geLSjA7W1Btyg4Ir50lqNF21au
	U/XdqRtyyeMrohdxW6RG4LxaBOZZLpziVUena3Ubev3Rl/upq2gyfr/SEVYGY3OXDHsewievtSQ77
	9OjZ5s9lsvekwXPCG2Njq9nIjl7jzkM84zQxIv9ORy8AKgKi4lUqX9lPKg7gMGhX7RJy0Kd3GUw/J
	dTYouoLUlx4g6a3Fqmyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nsURz-00HIxg-AH; Sat, 21 May 2022 19:07:43 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nsURw-00HIx7-Jv
 for linux-rockchip@lists.infradead.org; Sat, 21 May 2022 19:07:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653160057;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Wjy70z3rYdJmy6N/G7PkmPiJBr+st53+xede1hwp8ZM=;
 b=P7n6Toeq8lIWgUe2vVTOILyzxFbGy8l6T24KuPQyaH6AeaKyL1y2Ifq2B7zDF9dyCRASQ7
 dnZ7ScdmbNUZb298sEFdLLKtteozAT7Y7VSrLaHl8JlLqBhYeFG9vfNP15FN36Vt316v2s
 G9MTaOk24ieIVhzBu4HBRmTuRhPhxys=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-426-8PIZrz_dNfetLP3pH2Q4SA-1; Sat, 21 May 2022 15:07:36 -0400
X-MC-Unique: 8PIZrz_dNfetLP3pH2Q4SA-1
Received: by mail-oi1-f200.google.com with SMTP id
 f2-20020aca3802000000b0032b0a4dc9a8so1930168oia.12
 for <linux-rockchip@lists.infradead.org>; Sat, 21 May 2022 12:07:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Wjy70z3rYdJmy6N/G7PkmPiJBr+st53+xede1hwp8ZM=;
 b=BwDoc2WBv0oNWEjgZ3yHOp1KZVRjmB+meIAPMup8iyX/0ExwKnR/ulfiI6GD2AjbFl
 opdZU8KN8D6Y6B3FmFqVblBTKjvvdGmmUjNY1VktD2Wwj0a3XUOH1GvgI5QlwmhM3qDG
 F00pEk45MP3ssYsat9Mr7NHXawQ4aYw4GUnohsrSBJZdpFyA3We2XwlyXK0IRaiXqdzv
 vKJEXxSru8ZgJcuXa9MRqqhCJQD1UN/CLomx4yv3gM+ljwyGedzZhdjB3o6KwowkxgXH
 /CqbyMS17rDLKnC0BhzP8k63ztyjYT+XvTRREZuczedAJeYBV5B/CWKYGppZ/DwrPhQQ
 L1pg==
X-Gm-Message-State: AOAM533v3AA2C5YGEy4zP0laooDb5O61NPws4J6vo0vUzD1c5gUdEQX8
 fL6mZCOEb/CgKTHnmT22IXMWtLEsi9pV+3oC8bEiW0rQ+RUO+oAnfc2bELSXhYS/NtQ0rqGNZ+2
 xVqM+kUd14RShYL+LP5n1u7qF+8euOV0r
X-Received: by 2002:a4a:d40d:0:b0:33a:33be:9c1e with SMTP id
 n13-20020a4ad40d000000b0033a33be9c1emr6340069oos.96.1653160056074; 
 Sat, 21 May 2022 12:07:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxQFuSj7FFYoeGmIJnrtvUhAvMCbQ7XefIximmy8LWnPFdHFdaJq2T5go68pyrOKFdwywHEYg==
X-Received: by 2002:a4a:d40d:0:b0:33a:33be:9c1e with SMTP id
 n13-20020a4ad40d000000b0033a33be9c1emr6340058oos.96.1653160055856; 
 Sat, 21 May 2022 12:07:35 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 q203-20020aca5cd4000000b00326cb6225f8sm2495564oib.44.2022.05.21.12.07.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 May 2022 12:07:35 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@linux.ie,
	daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tom Rix <trix@redhat.com>
Subject: [PATCH] drm/rockchip: remove vop_writel
Date: Sat, 21 May 2022 15:07:16 -0400
Message-Id: <20220521190716.1936193-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220521_120740_972528_81F2B564 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

cppcheck reports
[drivers/gpu/drm/rockchip/rockchip_drm_vop.c:186]: (style) The function 'vop_writel' is never used.

vop_writel is static function that is not used, so remove it.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 74562d40f639..d1026e78feff 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -183,12 +183,6 @@ struct vop {
 	struct vop_win win[];
 };
 
-static inline void vop_writel(struct vop *vop, uint32_t offset, uint32_t v)
-{
-	writel(v, vop->regs + offset);
-	vop->regsbak[offset >> 2] = v;
-}
-
 static inline uint32_t vop_readl(struct vop *vop, uint32_t offset)
 {
 	return readl(vop->regs + offset);
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
