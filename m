Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47687C19F2B
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Aug 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fGiRy+xT5u9VHCr9af72PaePowhZUijgJhhgj8eGdhc=; b=NBt1MhmaMgxfhA
	3aAJZlGgzba5mSYKS+atgZR+l4GxKssXpYKLnPWZillj9H+gFdYrkEtlqN9vw5R5dABtpvU1BkxhV
	WFYK+kp6l1fH62rNbaeQlO7HZhPhHpQ8CI7vq6pklnht2a69YsrmjxvJXScWOcLrZWwENRNthnuTJ
	la/nDINcMxO1qQosppzEBjs1oRUYOxFeNFs87o0UnsuwawGo/Dk267SUm/s0vopDisqoULowxhiOF
	ezr+II9zstcOZuyjRUZePgOHTAMfuWrWrvkguDeZcDGZTGZqBhJRaCrG0v6UX/kwsM8zzyweEG0SH
	u2ISHc8rOT7GnzihDcgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oImgN-00BWYr-4t; Tue, 02 Aug 2022 07:51:15 +0000
Received: from mail.lokoho.com ([217.61.105.98])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oImgI-00BWTp-U4
	for linux-rockchip@lists.infradead.org; Tue, 02 Aug 2022 07:51:13 +0000
Received: by mail.lokoho.com (Postfix, from userid 1001)
	id 850C38238D; Tue,  2 Aug 2022 08:50:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lokoho.com; s=mail;
	t=1659426659; bh=Z0N5VlX9/JlryGOL5I747Le9USomZJCRNNGRT3LbbKc=;
	h=Date:From:To:Subject:From;
	b=Emf8yXUOMa9gsBlimg24cpKykQOYJNwtUNce2xuLXhS2NIDRFdD5fCbrfsy7dc+CR
	 M+fqZbpiuwaXzkp5dic4deuT3trh9chQ5oSAK5w30Bm7sR3xA8EmHUdDxyk5dbMD6U
	 ksN3dhZhPDVFTV9T+3U4ICcZkRXllbnHyhmS0gjlKQ4Iy8xpfwxI/SV4wYKVcTvoWk
	 hlYWTukP5Bl9FLDble2xgvHAdkxh25EL2QWX4c+urfWbFX93YlU9URU12zbEsmMI0m
	 3kiPmMrMUaYxfrvq8g3TAQV1jsCAxJC8yt5ptLK0rrbx1MAd05hmJ6TPisvYCpPOpD
	 ju9Nv61t1B58A==
Received: by mail.lokoho.com for <linux-rockchip@lists.infradead.org>; Tue,  2 Aug 2022 07:50:56 GMT
Message-ID: <20220802074500-0.1.d.mwb.0.rkrf2nqk2k@lokoho.com>
Date: Tue,  2 Aug 2022 07:50:56 GMT
From: "Adam Charachuta" <adam.charachuta@lokoho.com>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?S=C5=82owa_kluczowe_do_wypozycjonowania?=
X-Mailer: mail.lokoho.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220802_005111_208713_4D0CBC39 
X-CRM114-Status: UNSURE (   1.60  )
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
