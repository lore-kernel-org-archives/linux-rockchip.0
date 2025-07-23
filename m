Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68548C83F1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 08:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YFvvgq4fV85GiyverGpkn+0dQVKdFBOfEUYU+ez83g0=; b=u058fe8vK/JoMC
	UoeuKh9SCp5baxOR+7Q4LV1jjfDxC0fa8gMUNoULBmaxNW4HiYeP6WaUBNmG26NEbnfX037QLLGYk
	JrKDqQorwAavcMK+CPYP96kJy6HWeZyo89u1EpG47pZkINCLn5TYgBNsdMlfcjRrSiZAAnDC0S8Sh
	ycjXgn0jxcYEfkIAzjwNVqcALoXlXZxJGA29jNnQKxR+Sm5PeNF4MrtUv7ZBsK3wX4KfODML6LSRv
	n3RNcxWxlJ8sxaiB3D4+ULfVA8jhKk3l8SrqfDr23qgV5BKWfJAVsz09Dze2JFS9oIL8vUr16OMeN
	joV8LJQdbMZDOvUItbnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUvW-00000004O1j-168R;
	Wed, 23 Jul 2025 08:34:14 +0000
Received: from mail.fintara.pl ([51.68.214.200])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUZO-00000004LFs-00ZX
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 08:11:23 +0000
Received: by mail.fintara.pl (Postfix, from userid 1002)
	id 1C79B4E861; Wed, 23 Jul 2025 10:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fintara.pl; s=mail;
	t=1753258278; bh=0Yjr6NsrKkaYb/LNYm1mPKHuxqkR0iWhkNkzH9QSzrg=;
	h=Date:From:To:Subject:From;
	b=QLVrBABqayM2kFVGnhrNtI9GoNloZF2XzyPIAiByaAu2aq70ogVdB37hIp9Ok/J9Q
	 xmmo23Un+WD+4G0XR+r6fpYWP8j/NMQsQaN5hCmdaOI4+O+xWdr8MSNLbL7V4t6S0k
	 i2Z8icgZN6s6tYa2FVMMXekdvMnhTVvYBO4a6VEK8n3aO9962wK5Vztd3Yi8yNo/6o
	 a6xtvunbXY4+Om/hCo7EpQj+v14WzqZam2zbp6AwTeEovBAgZYe+Xq9uxi55ogSAwi
	 c++V/l7aWuumlN9qwkUnW3QrkhSUFmBfF6Z3oA4FIKU8yfhbMaiUPjTdHDssKPxZNj
	 NZSXV6QRX8wAw==
Received: by mail.fintara.pl for <linux-rockchip@lists.infradead.org>; Wed, 23 Jul 2025 08:10:17 GMT
Message-ID: <20250723084500-0.1.au.2x8cp.0.9iplc4o5mj@fintara.pl>
Date: Wed, 23 Jul 2025 08:10:17 GMT
From: "Dominik Lotka" <dominik.lotka@fintara.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.fintara.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_011122_304308_67A471DC 
X-CRM114-Status: UNSURE (   0.66  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpEb21pbmlrIExvdGthCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
