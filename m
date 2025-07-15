Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53E42C83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qLrlF7pVwZJJhvNjNGxI8jGxiscieI7ku7KsbW3Oz7w=; b=RNHYZQofIeM6E7
	LbvE7G052MR6f+EzHaoI9cXxgNXVP7nBs8Bic2tgTP0chmqTJY+WN79hh/vFy1IkG8D6TWCVTO8TE
	soo9YoiuX34C40AHyv/0c5iGn3RnrysCVVA9qBPtEvkUJKxrKl3N9kWWFaHYCOGaJK02neEk1LKBM
	/BhrzSIgb9KZWXSRUX3ufcs2ap6q7XPdM+VguJlBUPbVK2RFTIB/7ZrsXqJoEg/GSE+jLSg1hio9Z
	vG57viI6T1BkSJ5yxmgBQMk4QhzzW09NbH+cJrlHKnyw1Fb2PaGvulBKCrBA5DNl89JY+92bSpF8l
	C4ZFBCTpqVw3UEaNwoRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubaeb-00000004RkK-0vWr;
	Tue, 15 Jul 2025 08:04:45 +0000
Received: from mail.growdeal.pl ([141.95.55.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubaXb-00000004QOW-1ZkX
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 07:57:33 +0000
Received: by mail.growdeal.pl (Postfix, from userid 1002)
	id 4DDDB24839; Tue, 15 Jul 2025 07:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=growdeal.pl; s=mail;
	t=1752566246; bh=nU0fzD5wnLwbt9yoUSBeMInFHzMm7DGirLXtUO2ZpV8=;
	h=Date:From:To:Subject:From;
	b=Dk+y7jadDtofgNEnOdaJ2tmUk9iopaZumG/9qG41C//Z9LT+f3HAlNJead/TJY60K
	 lgTK9OZAUuTUct1ClI0zgXd9NVLz7kgIkc7nTng6E0i5ipKp0xlctyYA0EKgt73roO
	 E6RGm4+ns5JEzarlCfk3lDQt3rqFt6TQajd3jqtZjrD7DhS0q118vfm0qDwqGq0v8p
	 WsG7hAmpI7NnS+KjD8Y+/jZvzBwUKg8xhqSv3aZJ2AiT8KdWNpEu5+JBLoFzXFi1Hj
	 xyHVRPkblyTlxkAPox0dP0tKbthfb7vAVk5KYiOQ+JObcZb2Bb8gZLnAetJ3J9ka60
	 0vlPHepTjoWjg==
Received: by mail.growdeal.pl for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 07:55:37 GMT
Message-ID: <20250715064500-0.1.3i.1phq4.0.uri1k6j0r0@growdeal.pl>
Date: Tue, 15 Jul 2025 07:55:37 GMT
From: =?UTF-8?Q?"Pawe=C5=82_Zajdlicz"?= <pawel.zajdlicz@growdeal.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Rekrutacja handlowca 
X-Mailer: mail.growdeal.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_005732_104169_4E40411D 
X-CRM114-Status: UNSURE (   1.47  )
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

V2l0YW0sCgpDenkgbWFqxIUgUGHFhHN0d2EgYWt0dWFsbmllIHBvdHJ6ZWJ5IHogemFrcmVzdSBy
ZWtydXRhY2ppIG9zw7NiIGRvIGR6aWHFgnUgaGFuZGxvd2Vnbz8gCgpQb21hZ2FteSBza3V0ZWN6
bmllIHJla3J1dG93YcSHIG9zb2J5IG5hIHN0YW5vd2lza2EgUHJ6ZWRzdGF3aWNpZWxhIEhhbmRs
b3dlZ28sIFNhbGVzIE1hbmFnZXJhLCBhIHRha8W8ZSBLYWRyeSBNYW5hZ2Vyc2tpZWogdyBvYnN6
YXJ6ZSBzcHJ6ZWRhxbx5LgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHPwoKClBvemRyYXdpYW0K
UGF3ZcWCIFphamRsaWN6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
