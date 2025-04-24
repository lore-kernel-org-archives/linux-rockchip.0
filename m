Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8464C369DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Apr 2025 16:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOua3syzZfnbDl9BV4QG1cPhNMWMlDIC7uINFh/sCEk=; b=1pYEC0J1qhywNp
	GmdHA67UfRLTJIp1ck5Szu6U57n7GK01egRRe2AKkJCXBhSg+vWM+9Ooz6QXI4UvLWYaSlj7DoQ61
	I3oPhuUiADyWy2+JUcbV5MQlfdrrx2o4xZuxpstrAcHNY99VMCrOBYzned8PZ0SNdv+Gy8Gbe8S3X
	Em5OlnnSotiI5YqFhML0yq6Hl9YLhGCaO24VEbt0zdj4iAxQ9b53eoxApkmDYPqmnfu2qIuCHHpRs
	eKFMCPX6k6twqO8gFV64lTw0BaX6f1yaJNGDBo2WR/zOghVnnuyteX0Z9vz99yJlNnX1sGHuQ37Ow
	SBaEZpz5h/BqwbKdjfyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7z34-0000000EZkI-02we;
	Thu, 24 Apr 2025 16:03:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7uoE-0000000Drl6-1cFl
	for linux-rockchip@bombadil.infradead.org;
	Thu, 24 Apr 2025 11:32:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6Ttio08oTSADz4D/Sdqy63zgVY4f9+DlzTAqpC3Lvk4=; b=kyh2rek0XASwisZQbdXklp4vLv
	fbmsVrapLEuPTVDTzi16ulZZa2WJZQXxtyGiWKjwvAiu3slQ9+b9ThkfoIU41sJdUQxnKU46RD8Hh
	EQW9zveWHYsdVKjt7C4I6Kfp4//yTaHqce9MIksP2pEEpp23G2mgiAfmOXRR9eqpd8bFhgGW+aSQ7
	3PDxSGww9iGFm66fGwFoUlz2u0XhBkMkl9R5H80dsY6Xr+8Rfb7XF7vsP1AzUqJEOvG6oKQTO2Jl6
	BsE/nBW5ojGORpSfdDMhwh4sx6QUYcjUr9UxfVDiHwCpAvhfpDCOdOriZjcRmfIEvoryeT4Q//M+P
	wNwJUUEQ==;
Received: from p-east3-cluster5-host11-snip4-7.eps.apple.com ([57.103.86.238] helo=outbound.qs.icloud.com)
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7uoB-0000000C2DP-0Z74
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Apr 2025 11:32:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=etehtsea.me; s=sig1;
	bh=6Ttio08oTSADz4D/Sdqy63zgVY4f9+DlzTAqpC3Lvk4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:x-icloud-hme;
	b=tsVQ2KRiyGCIZQLb4G65HDJs1vpeeouwjaelagCLfL3NXGP+UVlNwIb5WoMjjuSai
	 Up7tFBXQPlHkmoShSz9jPaZfofxQNKyaZD7dZi8xpfOtSQQsxB2d+9ffn0kayCd5sc
	 JdltQBCD2bf+Mu2jRtjk/4nZmo6CcNxlbxE/D+NymdjMI/S45Y4FQ5kLUmE1Q1sHm5
	 +f+9FJc4wgb/L+X+SsBLrDMxQ5+bZ6zXPSB1FXd47il192LmMsfu4vGdzx95QatMLP
	 dlJbQnzwtoyuUr0FK0K9IiWD0W3MtcVijawtyQy05Gq4ZLbPXvpVmutBVUOMJMPPIE
	 Jrr6jl6T1c0rg==
Received: from localhost (qs-asmtp-me-k8s.p00.prod.me.com [17.57.155.37])
	by outbound.qs.icloud.com (Postfix) with ESMTPSA id 8D1E11801326;
	Thu, 24 Apr 2025 11:31:37 +0000 (UTC)
From: Konstantin Shabanov <mail@etehtsea.me>
To: andyshrk@163.com
Cc: airlied@gmail.com,
	andy.yan@rock-chips.com,
	daniel@fooishbar.org,
	djc@djc.id.au,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	hjc@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	mail@etehtsea.me,
	mripard@kernel.org,
	simona@ffwll.ch,
	tzimmermann@suse.de
Subject: Re:Re:Re: [PATCH v4] drm/rockchip: Disable AFBC for res >2560 on rk3399
Date: Thu, 24 Apr 2025 11:31:27 +0000
Message-ID: <20250424113130.7431-1-mail@etehtsea.me>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <a893834.9206.196484ef2ab.Coremail.andyshrk@163.com>
References: <a893834.9206.196484ef2ab.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 0lH5-8KJ1rBV-2m4q0bqzLQKWM_UHpbh
X-Proofpoint-ORIG-GUID: 0lH5-8KJ1rBV-2m4q0bqzLQKWM_UHpbh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_05,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=1 suspectscore=0 mlxscore=1 clxscore=1030
 adultscore=0 malwarescore=0 mlxlogscore=190 bulkscore=0 phishscore=0
 spamscore=1 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2504240077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_123159_381615_ACC9E707 
X-CRM114-Status: UNSURE (   2.69  )
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

Hi, Andy and Daniel!

What is the status of this one? I've noticed it went to archived.
Is it good to go or not? Any further recommendations?

Thank you,
Konstantin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
