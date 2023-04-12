Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 740D1C77B6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Apr 2023 07:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fGiRy+xT5u9VHCr9af72PaePowhZUijgJhhgj8eGdhc=; b=1D3rPQXASZ9YVe
	NUQbhanbSryAkgNNi33E+GkmWsnXIyQvyCr9Y1twrMNdid6KD+Hbh9/YEQUeycVsA+lGBW4bfao+z
	UnxqcZAbG7P04GnD625Xp3QyqZGrn/AoWjffr9FgUkm2qtXDITYHqDmu8JHr8lv3Cvs48yg+jBgC0
	8kQtphb4xOl52rfhbHDxsDl7zKjEhbif8Em83DgcRLmawwl96Dk7zTxMuBMwb6itsTWp7k+6pC3Yn
	Ok8X6bhGgOhDv6uPVH0M/6D9mYdIvUpaIBK3K3fXsOxx1TfAbmoiUUM3xItHj2I1+sUqwo9qln+uu
	T9IXzDpmUZDGxqR1BEwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmV8A-00284L-1D;
	Wed, 12 Apr 2023 07:43:02 +0000
Received: from mail.lokoho.com ([217.61.105.98])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmV88-00283Q-19
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Apr 2023 07:43:01 +0000
Received: by mail.lokoho.com (Postfix, from userid 1001)
	id 16A6883893; Wed, 12 Apr 2023 08:41:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lokoho.com; s=mail;
	t=1681285376; bh=Z0N5VlX9/JlryGOL5I747Le9USomZJCRNNGRT3LbbKc=;
	h=Date:From:To:Subject:From;
	b=mhhAsmkNY/69A+CIPOe9A0BYk4GFuzfWHTVU3uWi2xavxfyigg7/NX/nMWxG+xdHq
	 6V1qcUasq35jij/u/uQ8XDwYE9XGYSqaEaodkfZChbVVvNXfXXbCitD1cJqh6isWky
	 pE6Vc9vfgM9b72RErfCiml5YxA/q/lk3r677/6vQc3a7XiIsbG3kjpXwVYrE6E+tXZ
	 nVHS2fLb9P/+0IXosZezruiaZmdZF9AtzF66xqi1CHi5ldMiVEpok3utuRePtZ6vKQ
	 8j74FzdULo/vtXm3NPaO0yUdxK6+n189KJwjzkK25kN+7CiBdPVP1H0J4OvzjZoQBE
	 mjZGgEXe5uIig==
Received: by mail.lokoho.com for <linux-rockchip@lists.infradead.org>; Wed, 12 Apr 2023 07:40:53 GMT
Message-ID: <20230412074501-0.1.59.1u80z.0.b89dbl05dz@lokoho.com>
Date: Wed, 12 Apr 2023 07:40:53 GMT
From: "Adam Charachuta" <adam.charachuta@lokoho.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.lokoho.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_004300_555714_659A62BD 
X-CRM114-Status: UNSURE (   1.62  )
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

RHppZcWEIGRvYnJ5LAoKemFwb3puYcWCZW0gc2nEmSB6IFBhxYRzdHdhIG9mZXJ0xIUgaSB6IHBy
enlqZW1ub8WbY2nEhSBwcnp5em5hasSZLCDFvGUgcHJ6eWNpxIVnYSB1d2FnxJkgaSB6YWNoxJlj
YSBkbyBkYWxzenljaCByb3ptw7N3LiAKClBvbXnFm2xhxYJlbSwgxbxlIG1vxbxlIG3Ds2fFgmJ5
bSBtaWXEhyBzd8OzaiB3a8WCYWQgdyBQYcWEc3R3YSByb3p3w7NqIGkgcG9tw7NjIGRvdHJ6ZcSH
IHogdMSFIG9mZXJ0xIUgZG8gd2nEmWtzemVnbyBncm9uYSBvZGJpb3Jjw7N3LiBQb3p5Y2pvbnVq
xJkgc3Ryb255IHd3dywgZHppxJlraSBjemVtdSBnZW5lcnVqxIUgxZt3aWV0bnkgcnVjaCB3IHNp
ZWNpLgoKTW/FvGVteSBwb3Jvem1hd2lhxIcgdyBuYWpibGnFvHN6eW0gY3phc2llPwoKClBvemRy
YXdpYW0KQWRhbSBDaGFyYWNodXRhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
