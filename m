Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F135C369B1
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Apr 2025 08:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i43lf1vmdMbCCvwcfxVpE1QvnRLU/qmrD9az2sxOdHY=; b=VEGpZ0WS6HJNzq
	F1w8ys6YA+4v+aNpklcFpkugjWzNXn01xd6BglzG6D9T6gGH9ZorWv8Wr2avmuh1qetAQ7TsCczWR
	Jenq4rmDR1Q2q5xWyZS/wJEtXZGuRe1eq+l9ejuZy14rm8Ilf2wn4NrwgWVnxGUCm7O2jhRzfkNpP
	RKxbuGw9cG0crXV1jtCwwQY8ViHh+t/okXZCfzNzHwZulP+ORfCfS4KbXHOtJ/8DcYJZeloLRfG9p
	SKpiSd9J4VRXrQ9HwX19ao27SXM9j2JG9H3E9Ldp9CDaryrwdJ0cZSnfqRdV4lENbs8oOyy9uFy/+
	oui8IXZdST7e/3U3gzxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4xtn-00000008lN7-36cH;
	Wed, 16 Apr 2025 08:13:35 +0000
Received: from mail.astutebeam.pl ([162.19.205.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4xtk-00000008lMT-2Lrm
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Apr 2025 08:13:34 +0000
Received: by mail.astutebeam.pl (Postfix, from userid 1002)
	id 287652845A; Wed, 16 Apr 2025 10:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=astutebeam.pl;
	s=mail; t=1744791038;
	bh=Q6Mp/vCJCiZNgk6fb7utkqIErbcoVoR/CugPofoeCtU=;
	h=Date:From:To:Subject:From;
	b=aUAl46/CneA4mDuFLfMR7dOf6bq5ffRFvOsfm+767bi0F+PzE+AEMQHozrMgxsr/T
	 DK2RJBbctgPnStGqi0fBHqto/I7qdAh38xLwG8msghgF4TpFjIRjg2fubkqEQ1YpuP
	 GqNlGgJkcJGOQrmac7uvrplyfrAuvwwPRHdreiI4+PAbXhKLK+dSEa6B0tnBt83BIC
	 UANh+0JbH48BvsZKfc35VPF9zq+8ILIHAwAi1c19hloZxooNucziN0+cxPk3sZ9mSt
	 ACYfLUcU/jmy8JQrgWtVvfBP2KMrK2kUE4/PIkDcgG6fQmKwpzgo6cIGobO6z86waD
	 I2jC1nic4Qs3Q==
Received: by mail.astutebeam.pl for <linux-rockchip@lists.infradead.org>; Wed, 16 Apr 2025 08:10:21 GMT
Message-ID: <20250416084503-0.1.ho.1brb6.0.6z1ezku9ml@astutebeam.pl>
Date: Wed, 16 Apr 2025 08:10:21 GMT
From: "Adam Drzewiecki" <adam.drzewiecki@astutebeam.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_samoch=C3=B3d_?=
X-Mailer: mail.astutebeam.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_011333_291325_3BBBE3F1 
X-CRM114-Status: UNSURE (   0.33  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKQ3p5IGludGVyZXN1amUgUGHFhHN0d2Egcm96d2nEhXphbmllIHVtb8W8
bGl3aWFqxIVjZSBtb25pdG9yb3dhbmllIHNhbW9jaG9kw7N3IGZpcm1vd3ljaCBvcmF6IG9wdHlt
YWxpemFjasSZIGtvc3p0w7N3IGljaCB1dHJ6eW1hbmlhPyAKCgpQb3pkcmF3aWFtCkFkYW0gRHJ6
ZXdpZWNraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
