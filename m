Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31298C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 07:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZEFCx104ULTqzye3SfPITtz1KGkQFMqynqgNkpIybYA=; b=dPHqzOwZLN7CGw
	md5Ap9Tf2QUFvlWxW60Lcv+8+lMnywuMyr0TlPGTHxh+W+HMC2RJPi5ymAkzLmwhHXY6qzN1ivLxh
	w/RoZoqdiNIdS20E/Ejs0JtHT+UYi+pd+kr2I3aZs7RphiFQ6YjJ1l5fB2Qu/vmd93a1B+e1vQetc
	wGhhaZEapgknB5Cjy8/3FPlJS1nXFHaI0Xt0H1onzaxjxhzH78c+tKootf91bMwACbp1vzSpyAyZG
	Jn3boh1juCxs7nNbZaS7WUaQbx+2Vj3NO0vkaCfTMUN55o5LNtLuYrjkpDhc9O3iDn10C69tpZtVY
	huRj5/grViZRzY3kBLGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhRXh-00CAeR-94; Thu, 21 Apr 2022 07:47:57 +0000
Received: from mail.rubyinfo.pl ([5.249.159.30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhRUB-00C8ca-BX
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 07:44:21 +0000
Received: by mail.rubyinfo.pl (Postfix, from userid 1001)
 id B3AE0A3B23; Thu, 21 Apr 2022 08:44:06 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rubyinfo.pl; s=mail;
 t=1650527055; bh=/9MpKlGUGEWWhiQdedVnMqaLo1WTRqCWHemvvbwCPnM=;
 h=Date:From:To:Subject:From;
 b=wOC0fVgI3+Aly9aWjp7CCnZQJExnNwLOUcw674pAYqkIIdBqSrskg5IEEqacjpE0P
 e+GsCIXEGT5Sl/AWAxVU/9Xck4ST9Zv3EqZEoT/UFt/HyCwFgPEZknSqsxRuACvuJW
 mZZMXSyi/5sUrdptKoKCyWVxhzgnzpFmdOmGFeqArhhiEjQRfu1FIivF7afPgRYhYi
 5o4ZsKBk29mBKY9Iy+qbnzhvL//+ZvCSNTxIJGJUit4IiSWBserAiFEfhGStNt4q5T
 QP1uGdfZwx3qdibIKlpf+btFN1gejgWke7dPmIwVFstzk4jtsxzQ2+QXpU9CtxGqgY
 2WDMQA3GGxMVQ==
Received: by mail.rubyinfo.pl for <linux-rockchip@lists.infradead.org>;
 Thu, 21 Apr 2022 07:43:33 GMT
Message-ID: <20220421073001-0.1.4t.p8ym.0.fbwbclcc9f@rubyinfo.pl>
Date: Thu, 21 Apr 2022 07:43:33 GMT
From: =?UTF-8?Q?"Miko=C5=82aj_Rudzik"?= <mikolaj.rudzik@rubyinfo.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Nap=C5=82yw_Klient=C3=B3w_ze_strony?=
X-Mailer: mail.rubyinfo.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_004419_766936_EDBF37B3 
X-CRM114-Status: UNSURE (   1.64  )
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
bnRha3Qgendyb3RueT8KCgpQb3pkcmF3aWFtIHNlcmRlY3puaWUsCk1pa2/FgmFqIFJ1ZHppawoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
