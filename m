Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C1DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 May 2022 08:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/3hARtqXhXH909nCTb7xQmMwCqy2OJ5iPWsmTtdDWDw=; b=2qXvDuVrUrZOuX
	4DNeM7xryYW0IZFHqKiutkDH+r02mcRoJ3htkuy25lhuungXDxajFN9tZX4rSqM1rekGgij6YkmBe
	hrv08uUXDa4Od16DcD4tmXtFXe0OYZLLsw6N5pqKUsLVfqmGm4CjVk1prDb1EAT7SM9j64Kr21616
	eMCaCqnisd9PInVP8f+3KAacnn/flzJtTZFmh7UnknP0khQviHTh848B9mIPGb/EDzhKX36NMHAZP
	1Ysj2EfTHQlopx4jf303ua3YPi3pEu64MFhfkrbihYVuMPWYaww7ieSnVmmPWrdj1MHD9XGUN0Pdr
	VmqsUi/oRX0BJijoBgBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntPbj-007Cag-5p; Tue, 24 May 2022 08:09:35 +0000
Received: from mail.greatagencyonline.pl ([89.40.125.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntPbg-007CZ2-Ea
 for linux-rockchip@lists.infradead.org; Tue, 24 May 2022 08:09:33 +0000
Received: by mail.greatagencyonline.pl (Postfix, from userid 1001)
 id 3D650A8127; Tue, 24 May 2022 09:01:25 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=greatagencyonline.pl;
 s=mail; t=1653379286;
 bh=ksvwLPFdjL017OLwir5xHXy3Vmrj/5fhZ5DwBI62qzc=;
 h=Date:From:To:Subject:From;
 b=hFNPf9eppsHY15y59V/ySmElBfEaisuR7x4A13DmecAMD4FNXbnoMYwvhbtzrX+WQ
 dZ/5GFWo5gM1dC9GvIJuWnX3T/rmjuFSvA9yr+lk8kCbm4HDi7eKklSH6hsVUT2zKL
 ZiOY8MKuxxWAX/JsFkCyQ/wPk8HSOT4dO4F5t2udw1FV4jDpQYS/GHuictzSCu77T4
 xfH3VgtHouZHaOPDofAEBEfSEib3PfBmehZ4rEwU0Xsn553eSNs47dN3cz+tsxQyrt
 QizWIL8duaoEjSQRu9emWnC6UA+DTsWEeI1n3bWZUQslt6twjrJXaA6wxXUbOohVrR
 k+nX66qwG38hw==
Received: by mail.greatagencyonline.pl for
 <linux-rockchip@lists.infradead.org>; Tue, 24 May 2022 08:00:54 GMT
Message-ID: <20220524074502-0.1.43.vxub.0.ng0nfamodp@greatagencyonline.pl>
Date: Tue, 24 May 2022 08:00:54 GMT
From: =?UTF-8?Q?"Miko=C5=82aj_Rudzik"?= <mikolaj.rudzik@greatagencyonline.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Nap=C5=82yw_Klient=C3=B3w_ze_strony?=
X-Mailer: mail.greatagencyonline.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_010932_650553_FCDE382D 
X-CRM114-Status: UNSURE (   1.71  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKY2hjaWHFgmJ5bSBwb2luZm9ybW93YcSHIFBhxYRzdHdhIG8gbW/FvGxp
d2/Fm2NpIHBvenlza2FuaWEgbm93eWNoIHpsZWNlxYQgemUgc3Ryb255IHd3dy4KCldpZHppbXkg
emFpbnRlcmVzb3dhbmllIHBvdGVuY2phbG55Y2ggS2xpZW50w7N3IFBhxYRzdHdhIGZpcm3EhSwg
ZGxhdGVnbyBjaMSZdG5pZSBwb21vxbxlbXkgUGHFhHN0d3UgZG90cnplxIcgeiBvZmVydMSFIGRv
IHdpxJlrc3plZ28gZ3JvbmEgb2RiaW9yY8OzdyBwb3ByemV6IGVmZWt0eXduZSBtZXRvZHkgcG96
eWNqb25vd2FuaWEgc3Ryb255IHcgR29vZ2xlLgoKQ3p5IG3Ds2fFgmJ5bSBsaWN6ecSHIG5hIGtv
bnRha3Qgendyb3RueT8KCgpQb3pkcmF3aWFtLApNaWtvxYJhaiBSdWR6aWsKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
