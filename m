Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 870E6C76196
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Mar 2023 07:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fGiRy+xT5u9VHCr9af72PaePowhZUijgJhhgj8eGdhc=; b=zWiF9qo3Rpbohy
	wAqZKEg1hcc/DprzrTPJvu3NrMoLeB/HIvdF8oL7IbHRnhfH8N7TnQQ9jlRk76JwC9DCtQBeEzyhv
	heiZxy973x+1wwCdjR5l8nH+bQ5Jmh22nGGwct5mRvB6Xk/xFG4mJVH6gFQ2NHslMss1DpsHk1K1O
	NepdYIua7ohvNI/AoAwbUp6AlgMxyN6bs197/f+k6NyvUTPTWhM64ISBUR3CtOXBLoyhx85Aoua2o
	xnP7Fl+fFFAr24OC3RoZ7nvHY0aoe4I+HZpkLoWiP937Qd8sk55j5B+nKzoP3i+8unQ24CMsTXtFM
	NwIjt3kotb4CoZ9vEftg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3zY-00DVwI-1t;
	Tue, 28 Mar 2023 07:43:40 +0000
Received: from mail.lokoho.com ([217.61.105.98])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3zV-00DVvW-2h
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Mar 2023 07:43:39 +0000
Received: by mail.lokoho.com (Postfix, from userid 1001)
	id 0536D841FF; Tue, 28 Mar 2023 08:41:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lokoho.com; s=mail;
	t=1679989416; bh=Z0N5VlX9/JlryGOL5I747Le9USomZJCRNNGRT3LbbKc=;
	h=Date:From:To:Subject:From;
	b=haRmw165Cr3Xl5wa7KJ5wIjwD2ifnDsYW/zAZ9+vTZftQ9x8UiLJDetqbi8/+ZNvI
	 uCnf5rd4ZYGJnJOIkfAbQ/dNSfEHFgSfBD4A6GajuSzxBN6JibywBLCqpGsse/T1ZU
	 YafHFymGxlT4YStXI9TAA2c5uGbcfDTZjhGtGSSWBr1NPg65Wv9Qjbo/LQgFdBoaqx
	 f8TuPB1bun+SmtYqUcLsLcsEE1+nUGGY7C/6fspg3a/x/ZjcSJ+PPhhxlEXL1bp4hY
	 P2J/k1Bx+QTt02/DaV6c9o1tNyvFHMnl4aT95IZDPuQk+q2Yj0fKDjcjN3XV4w3Uys
	 vPdCcemYCor3w==
Received: by mail.lokoho.com for <linux-rockchip@lists.infradead.org>; Tue, 28 Mar 2023 07:40:50 GMT
Message-ID: <20230328074501-0.1.4x.1mztq.0.gyi6kina50@lokoho.com>
Date: Tue, 28 Mar 2023 07:40:50 GMT
From: "Adam Charachuta" <adam.charachuta@lokoho.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.lokoho.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_004338_015313_5AFCA10E 
X-CRM114-Status: UNSURE (   1.73  )
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
