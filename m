Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB9E0C678D5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 15:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:MIME-Version:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4+n+jmqwAUV7SetSVldIrtVeAQUwfjX4AVC2IcvcSIs=; b=qtHbaGl7+2r/8m
	YLL09Ns4gWvizsD/pnjXip/EPESHiV4VtxBYUSn7J00p/Vd67NbF/eqmlI0UNY09vNHhmnux/KfR7
	dargPpPZ11SRakdETN3E8X/scitDg2wbjPSkAKBq2aUU4+z3UvBP/fAUJiSm71r5feupv9GPdLRuX
	IPriJ+7C70I9Z+5ND8bSLA6kJVGop/RQvdeLirEGxS/SqnNVoS4CuhVsQcvhgLism7i4Z+2bffS6f
	8pEIrYxX6TCM9NvBz6h6HrRW3q7rhHsjys0q2aDxVPdNOmd9sTV9TeRSh3f6uqY67It53Rlm21LpR
	Pam5B5vRT6gcDpkBx2qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZvKq-005c9o-Rf; Wed, 08 Mar 2023 15:04:08 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZvKn-005c8Y-V3
	for linux-rockchip@lists.infradead.org; Wed, 08 Mar 2023 15:04:07 +0000
Received: by mail-wr1-x42a.google.com with SMTP id bx12so15659717wrb.11
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Mar 2023 07:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678287839;
        h=content-transfer-encoding:subject:to:mime-version:from:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=km8AYClsgRL+l4X0k1bSrfqh+593Y4aFlyz7FmefBDA=;
        b=cHwLwl83mOZdJ3FYKTW01tq2UY7O/HfR9WXtd0jODfgFN7KHSkYn27q/EVddZ72VN3
         oqUOwAtKb9S0EFBazL+dnZhJD1/jCGjIlWQIHnZC5l2zlR4SuFuS9KCIIXCxX+CZFo9n
         UBHu0yPw81cBu2pI/qJnvYnQaYYHyMXbsbAc6Qo+81NQbcYVO9E769XzytpSAyQRpl9t
         xu05yX6DrsQU67CVIMeRSXZSCMNygaNAvcYJPnbjsbX4R01CgdHu8ZyWsvW9BIwPO79o
         OLtA7HAoB2/s9qVQgMJc6M6QhGX5B0Q1TsV0yKOy1LLYX9WtkY4m6BzA0HRu6kZ/p+L5
         qZeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678287839;
        h=content-transfer-encoding:subject:to:mime-version:from:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=km8AYClsgRL+l4X0k1bSrfqh+593Y4aFlyz7FmefBDA=;
        b=j4/iM3gOHNk/s0j+sYDcBwF1K3RvuYcB4Odeei5GzT64byDjS3LlFDEFrDz3x5PQSK
         ZMILMAdzeGqmU5ni3ddnO68Jb7txtiKMdQR0c+EK/fQCili14F7+xDa0QU6v+LE4bGLg
         /6D+wgJbmSNEuIOjYdpfVT/TLXCdgRq8jZcOYpIwuBu8WGHbPdsHIqqj2anqtsrJn4qc
         bhqXk95MHBXA31xS8iAZGjgPnMOSf8k5VBmlbpRmDSFb6cAolIQWYxP2VHzsUUfrcnac
         Z1RDgW+ivij1AyVCp2d0Fq7vmY1cJoMgd+bDgILx+M/TvFC0XrQ6u2C1oMdb6JoEhwEq
         OHbg==
X-Gm-Message-State: AO0yUKW8Kj+9XXo7ySooBrX2xEdIaTB0/gzMFl71R+GM1jIRWYo8DJi3
	bCB+2vlcWlO+uEaNx6orDSliVAwuDQs=
X-Google-Smtp-Source: AK7set+R97OFb3AHoUS5tzqYs+w/Fj5iQCFk48y27i4/VRxqcAt0lFPoiFMH2p8ms6uF5Pjc93lNXQ==
X-Received: by 2002:adf:fecf:0:b0:2c8:cdde:c284 with SMTP id q15-20020adffecf000000b002c8cddec284mr10700409wrs.38.1678287839344;
        Wed, 08 Mar 2023 07:03:59 -0800 (PST)
Received: from DESKTOP-8VK398V ([125.62.90.127])
        by smtp.gmail.com with ESMTPSA id n18-20020adfe352000000b002c567881dbcsm15404159wrj.48.2023.03.08.07.03.58
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2023 07:03:59 -0800 (PST)
Message-ID: <6408a3df.df0a0220.6a9ec.e541@mx.google.com>
Date: Wed, 08 Mar 2023 07:03:59 -0800 (PST)
X-Google-Original-Date: 8 Mar 2023 20:03:58 +0500
From: amosjace274@gmail.com
X-Google-Original-From: AmosJace274@gmail.com
MIME-Version: 1.0
To: linux-rockchip@lists.infradead.org
Subject: Bid Estimate
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_070406_006898_8EC4720C 
X-CRM114-Status: UNSURE (   2.19  )
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

Hello,

We provide accurate material take-offs and cost estimates at low cost and with fast turnaround. Our team of professionals has been providing these services to General Contractors, Subs (Painting, Electrical, Plumbing, Roofing, Drywall, Tile and Framing etc.). We offer both Residential and Commercial Estimates and we cover every trade that you wish to bid, whether you work with CSI Divisions or your unique classification. We use the latest estimating software backed up by professionals with over a decade of experience.

We are giving almost 25% Discount on the first estimate.

Please send us the plans or links to any FTP site so that we can review the plans and submit you a very economical quote.

Best Regards.
 Amos jace
Marketing Manager
Crown Estimation, LLC



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
