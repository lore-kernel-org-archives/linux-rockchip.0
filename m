Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E390CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 08:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+emCoohHcW/GVFKvHhz+oYhyH2b/lgyxMF8tlUboxFA=; b=NF7KbKZ9qCYOAg
	AOivLYaAMh0BfObIOSm46IiwQptP4yte7Iun0OIzEC5PJfkNHzf32MT4jObi9cHpwrrIwdjZYM1ST
	Tag7VAo7OQ7vNIK1N77cxFFSSxkOTaYL0uLmVr/CC3iY7+eUf1H/SYWztHAUNiP+8YeIMnDXTDucC
	pQGNmQJ0MuxzvnO5IR1Gwi4UQWFyF2J2d3ttSV7uHhji5qVtypYVO7OREJd7h9mAvqmkIACLX7Xd1
	5I5VZk+nm+YEejiMnmwq3AV2dKtkfFfArPLhvMm6XGZd/qKxbYjWYPXDWtUemnVMpVU2NATO+qkmO
	BL0PYki4FTdlnknRQ3Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBTrs-000000020L4-1CHq;
	Wed, 22 Oct 2025 08:06:48 +0000
Received: from mail.taskera.pl ([51.75.73.133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBTrp-000000020IM-2r1U
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 08:06:47 +0000
Received: by mail.taskera.pl (Postfix, from userid 1002)
	id 49AB4259B5; Wed, 22 Oct 2025 10:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=taskera.pl; s=mail;
	t=1761120396; bh=LHmroAf0IX0JOjVUiIwqM4s8ghVxxktECxT6AQD+q2c=;
	h=Date:From:To:Subject:From;
	b=k/lDatokJqRNBXyQiK6yve+1YcbP3kRe0/oGLZTJtnLVdeeT4OU4+bWYuJ/Mde3OO
	 dmj9YkR0iDx5o7qFV6yHwK5e25aUhZWm8rUa9H9dqZfbmIzKmf2GnsvJDr3EX/FSR6
	 AQSCXlbD5tnTaEhoX+0niZkOopfPlmPVFWlIsJYG/dohfbMJ5NQMCv3CLKOUY6DyIM
	 CjcnOu6cmTLzyKkPdy8idSS2KZmb7gfYry44K8YhrWPPSegPKUC/hivlAT6bZ9xCqo
	 kI3ab/kH4vwfBP6NMjI/lIe1VK2KIjzR3/jz1M/0eQeLVRCVqjWEVO3eWqY0QiHh9u
	 b/SvYluQT2UMQ==
Received: by mail.taskera.pl for <linux-rockchip@lists.infradead.org>; Wed, 22 Oct 2025 08:05:57 GMT
Message-ID: <20251022084500-0.1.e0.vuto.0.c9aefv9g39@taskera.pl>
Date: Wed, 22 Oct 2025 08:05:57 GMT
From: "Eryk Wawrzyn" <eryk.wawrzyn@taskera.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zwrot
X-Mailer: mail.taskera.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_010646_011633_A3B951F9 
X-CRM114-Status: UNSURE (   0.68  )
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

RHppZcWEIGRvYnJ5LAoKa29udGFrdHVqxJkgc2nEmSB3IGltaWVuaXUga2FuY2VsYXJpaSBzcGVj
amFsaXp1asSFY2VqIHNpxJkgdyB6YXJ6xIVkemFuaXUgd2llcnp5dGVsbm/Fm2NpYW1pLgoKT2Qg
bGF0IHdzcGllcmFteSBmaXJteSB3IG9kenlza2l3YW5pdSBuYWxlxbxub8WbY2kuIFByb3dhZHpp
bXkga29tcGxla3Nvd8SFIG9ic8WCdWfEmSBuYSBldGFwYWNoOiBwcnplZHPEhWRvd3ltLCBzxIVk
b3d5bSBpIGVnemVrdWN5am55bSwgZG9zdG9zb3d1asSFYyBkemlhxYJhbmlhIGRvIGJyYW7FvHkg
S2xpZW50YS4KCktpZWR5IG1vxbxlbXkgcG9yb3ptYXdpYcSHPwoKClBvemRyYXdpYW0KRXJ5ayBX
YXdyenluCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
