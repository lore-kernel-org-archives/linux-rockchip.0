Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50319C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Nov 2022 09:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fGiRy+xT5u9VHCr9af72PaePowhZUijgJhhgj8eGdhc=; b=tKMHSZyl2LBBDj
	9/HhzspY9Jfg1hJcfPssfIyN7Z+EpzHZ4w1eYoOOm23M2P+F9yWbhrek0EcQdPpLRMLghWzkooxUF
	bsTGWQdqKyDx9bkHYly4bVZCiDnPVrutQcZc6xyGYW4q0zOQm5TqdEyb/H4pY34257KAffvaSa1kk
	D0qmxo4YObIahEdbaPRZa+mpCCLwazrZYC/Yg0m0xRUqnp1LuBi13oKkAOxIEKrI1Ju1CHCHXWVf8
	7/UwYbSieA7K7WvUESW7V/BvHOMtT+6d4KufqIqBM7bjsubrvCufKNWx0MXhGrzAxyvEAQqUipTnO
	BYMtSvNkRHYooFlOlzFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oshBu-00CDCQ-GD; Wed, 09 Nov 2022 09:16:14 +0000
Received: from mail.lokoho.com ([217.61.105.98])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oshBr-00CCzg-A9
	for linux-rockchip@lists.infradead.org; Wed, 09 Nov 2022 09:16:13 +0000
Received: by mail.lokoho.com (Postfix, from userid 1001)
	id E66B58284B; Wed,  9 Nov 2022 09:16:03 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lokoho.com; s=mail;
	t=1667985363; bh=Z0N5VlX9/JlryGOL5I747Le9USomZJCRNNGRT3LbbKc=;
	h=Date:From:To:Subject:From;
	b=BVdkLqEKfhOJ0whXgZCUeIR72UaoiN4qA/KgeTTfFfN2HpxSfeZHGYFuLu3Jzx4HR
	 tu+KphHuB4UA0n60BSj5XyMzUBdOJHpu9Y0OD1fWnnqyZM3lR53MwjOrNJMGVm2JCd
	 J5X/VwA9HX4zKHaim0/j75mtL/llPT5PJjnYtE+kQbSLCeM3uIAZBRxr6rxeb3aJ/a
	 oilk4GPC7gatzP+O/7M2oYZKP7172rP/iEaxpI6/Bz5DhlQxpEDHbpG0rFYLFJmh07
	 c3Wu1mQi7Ee+4mBXcB8PV8m8bWG6lY9K2akvKJe4F8r++FJTgjdUrHkbEron4+jmJg
	 FWOST/exFC1lQ==
Received: by mail.lokoho.com for <linux-rockchip@lists.infradead.org>; Wed,  9 Nov 2022 09:16:02 GMT
Message-ID: <20221109074500-0.1.25.5s1p.0.29qinrcots@lokoho.com>
Date: Wed,  9 Nov 2022 09:16:02 GMT
From: "Adam Charachuta" <adam.charachuta@lokoho.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.lokoho.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_011611_534429_AE79470D 
X-CRM114-Status: UNSURE (   1.55  )
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
