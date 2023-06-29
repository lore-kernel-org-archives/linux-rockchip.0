Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82FD3EB64DC
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jun 2023 07:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fGiRy+xT5u9VHCr9af72PaePowhZUijgJhhgj8eGdhc=; b=k02UPwT+1EE0jg
	c/Dv6TJhIsrSGqTqkGwZT/nipciy1ezGphV4As2gm9uSVgnojzSjWWxPjQqC28x/c/xrAtq6/s0oR
	zcOnw97COGh3jACQLhid/bFDo9KyMWjB0w3AZGy4b3OabtQuP3GyfZBgi8RgwY98P9gNceUS3ftOm
	wxSqzIZzw1Ej79oTEane0wqF1uwNlH09SlnCAoWB6nhQWhODJuHc432ci3NezAOXfFwIsKm8XulhD
	1OwesogOTuhEpE3i4sQ7IlTPfp1xu/bMLJfhW5dVlPo5F506jdsWnU/48xuXnNQv2tgD8yOrN09v1
	JBo4Jph4uiGnjusXAVkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEm9B-000Cze-0p;
	Thu, 29 Jun 2023 07:32:57 +0000
Received: from mail.lokoho.com ([217.61.105.98])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEm98-000Cz5-1e
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Jun 2023 07:32:55 +0000
Received: by mail.lokoho.com (Postfix, from userid 1001)
	id 84A198371C; Thu, 29 Jun 2023 08:32:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lokoho.com; s=mail;
	t=1688023935; bh=Z0N5VlX9/JlryGOL5I747Le9USomZJCRNNGRT3LbbKc=;
	h=Date:From:To:Subject:From;
	b=SkAuGpIlxfTkfvA+3yzz/DRko+jB7JvBiwuwkilF90l9uxq+sYeoisb8MPc9z243F
	 l2XnTjMCidQ+k4ZCNZjkVsquy1SZYuZC9k9CDK5vEeIExFuwkpiE7oJZ1KCAecKyzi
	 xOdpcHxeOUvednzzajQxa6k7k+4c801HZQeazixx6NCrvwnDQfbV4gQ7Bb87emUIlq
	 /daMt5tAp9aJO+OttuQeYfeVfkbk5MQGVlUmQkS9MzbegN5QZGmk13w2JLOJThqHrp
	 IzOG7oPXe6Xqa9GyF9f7DCWLTRhVw/6VHe0blRbEAJis6bQdsbLpBetwFhPj95uAgP
	 t2B3O2AKBYpOA==
Received: by mail.lokoho.com for <linux-rockchip@lists.infradead.org>; Thu, 29 Jun 2023 07:30:21 GMT
Message-ID: <20230629074502-0.1.6y.2sxer.0.3ra5orc0jk@lokoho.com>
Date: Thu, 29 Jun 2023 07:30:21 GMT
From: "Adam Charachuta" <adam.charachuta@lokoho.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.lokoho.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_003254_773676_B7907558 
X-CRM114-Status: UNSURE (   1.44  )
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
