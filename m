Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B60BC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 09:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fGiRy+xT5u9VHCr9af72PaePowhZUijgJhhgj8eGdhc=; b=cJKYKlomIO5N5D
	LCJpr7IWFBbwY9oaP0qvUOscj8BIbe3icVgLWlKa7yO/luT7ZQG5r7V947/8O0zzTbO52famvfGJ/
	YJBf9ghYbJeDtaqG2MDdXeWKax7TuUA2Wm3YSuxSMd8dZPC4tgVVpdP43xtocDXaK+FioBHZcDSWv
	Qbwcx8p/0/W6RAcCV9DedWrTK6+VcBIOQmfOGABj3hVteexpin5HyNHnveUBPVFwA13hMPQDCJte8
	he4vipjFXw/G7QGu5uhW5J3sQnb6QyfU9r1owD1GBxUwLprJI93vBSnoP67/ntzhSpceMR2AaofQz
	+OmucafIVKoUWCPx0zBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5kBY-0081bQ-NF; Thu, 15 Dec 2022 09:05:48 +0000
Received: from mail.lokoho.com ([217.61.105.98])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5kBV-0081Vl-UR
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 09:05:47 +0000
Received: by mail.lokoho.com (Postfix, from userid 1001)
	id 9487486AA4; Thu, 15 Dec 2022 09:01:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lokoho.com; s=mail;
	t=1671095004; bh=Z0N5VlX9/JlryGOL5I747Le9USomZJCRNNGRT3LbbKc=;
	h=Date:From:To:Subject:From;
	b=dT2UPQZv4uFZjIxTziau3RNE7YhhgBlCLUwlZqCHP5hE5W6NjZsj9VGulYxijO8GE
	 wd372v1dvigv/Ufnr8bWfZF3UaCxMRyyKQ50GiYiPNrHnUjl4bstvUWAQ4lZbWMWZ7
	 uQOftjK9Z0wVnB/rXXKtr2U/Bq9WFumRfcGLZRqe7AB9DztnnCJyZuXZcjqgI5C++L
	 2IoS3otUhKYeiRAqP+XSXQ7wDO8yIhsZAbbN+8e9/TjsEnOjBOlP3S3pmdejGCktRw
	 KPIA6ZxgwEvSDzr1r0cHpehbwTBbQelktsOH4Halg7BsmfsqUL9NL1qwFp/3Vx7QLm
	 T2DyFeFUEr+nA==
Received: by mail.lokoho.com for <linux-rockchip@lists.infradead.org>; Thu, 15 Dec 2022 09:00:28 GMT
Message-ID: <20221215074501-0.1.2u.adsx.0.gb62onlvyb@lokoho.com>
Date: Thu, 15 Dec 2022 09:00:28 GMT
From: "Adam Charachuta" <adam.charachuta@lokoho.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.lokoho.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_010546_135166_C4224BD4 
X-CRM114-Status: UNSURE (   0.85  )
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
