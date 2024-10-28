Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CBCCD339A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 16:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gl/Cax4grKu9FEQIzW++UULef1hIfIyxamrurugNIJA=; b=b6uXMnscnHqEAR
	YP2vcQoQdf16MzMctAwmaBExXHGSa4iwqXsxnbzabI/vY09QuHZY9sFRlp0ZzF6eJjr8Ssz3Wk2N3
	DxQGI2S4zTl01eavrsrFbgrCyr48kr7agQQjtJqzY+2pv2beBUTgbKwkB5suwSfXR+E5e/h42PMqQ
	BtxPR6j9WyGZhuztvHMM9YgkZDtR4tUhOafROSd9eaqgIVXDMgp2l+HUwJ2GV76Oo+m5ovYZ7Ew5n
	4t88FQJZn4miBeQh36dS3nhsnpVvEqz4y3QNBSjg1p1Dpe4wpk1grlk+f2xsnnY/QWR2i4BdGyDO4
	PsBFbN9W8h4gvx9wkYBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5T1V-0000000BaFW-1K80;
	Mon, 28 Oct 2024 16:55:21 +0000
Received: from mail-4316.protonmail.ch ([185.70.43.16])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5SnY-0000000BXVF-02IU;
	Mon, 28 Oct 2024 16:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1730133652; x=1730392852;
	bh=YnLp2twzv2TNQbo4aCFZTZoiRr0XaMjJP+UKxGSJsRk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=YDPMWx+VopN7IYplxBpOGlkFuWwiT0GjcLnCz/I7w3zK8cYhr/x9MRkDkWtFKNbt0
	 GuokZV2xiVMslVNXUso5BClJwe29PB0anTiGBGDxkAH4/4g/0Pdq/ZQYpn1tbsis8d
	 Jh/j1593zuLLkEzL9LtnyXZiyk1dsrdn/4GOXE9o+SzVZclfjLV25zyy4eABWHjZXo
	 ReRwqZJjW7aUN0dQyecLkqMMwEg4saP5paeE4yNMUL+uPOQp2W+WM/cuuDVY7VukL/
	 p2OCHCd9MA/8rzOp1+hz9J9t+5YSuQPGA8qkRUx2Kdddk4PakB/P4Ex23rK+F2UQDU
	 rqdNzkUVc3Qdw==
Date: Mon, 28 Oct 2024 16:40:46 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re:Re: [PATCH v6] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <-rVNN65kgfRzFJBJDIwQF3jNMfXIZFP8GibtUgB_p-eWGLBkNZhYFr-BXEas8IjjofHxWQUqNicUSTp5rb9XmuLi35XsDd0PzJPz79j-M-8=@proton.me>
In-Reply-To: <2bb58a1c.6287.192d1dc9b2d.Coremail.andyshrk@163.com>
References: <20241016223558.673145-2-pZ010001011111@proton.me> <DurUfF_0TBHKv4DHKIP3ggQh_85nRY0usYWn_fu_oJ45txO7dGKv-OK5rl6EDEPmX5l8WzrwPCzAvYz0xFPfeKGyx7enu1g-prsWIpilv88=@proton.me> <2bb58a1c.6287.192d1dc9b2d.Coremail.andyshrk@163.com>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: 70c53b22f6b3d3f24ee6b0df1f6f75d1e7f29476
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_094056_803375_D7633D96 
X-CRM114-Status: UNSURE (   7.83  )
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

T24gTW9uZGF5LCBPY3RvYmVyIDI4dGgsIDIwMjQgYXQgNzo0MiBBTSwgQW5keSBZYW4gPGFuZHlz
aHJrQDE2My5jb20+IHdyb3RlOgoKPiBIaSBQaW90cu+8jAoKSGkgQW5keQoKPiBUZXN0ZWQgb24g
dG9wIG9mIExpbnV4IDYuMTItcmM1IHdpdGggcmszNTY2LWJveC1kZW1vIGluIGEgYnVpbGRyb290
ICsgd2VzdG9uIGVudmlyb25tZW50Ogo+IHdlc3RvbiAtLWJhY2tlbmQ9ZHJtLWJhY2tlbmQuc28g
LWkgMCAtLWNvbnRpbnVlLXdpdGhvdXQtaW5wdXQKPiB3ZXN0b24tc2ltcGxlLWVnbAoKVGhhbmsg
eW91IGZvciB0ZXN0aW5nIGl0IQoKPiBzaW1wbGUtZWdsIHdpbGwgZHJhdyBhIHRyaWFuZ2xlIG9u
IHRoZSBkZXNrdG9wLgo+IEFmdGVyIHRoZSBwYXRjaCBhcHBsaWVk77yMdGhlIHRyaWFuZ2xlIHdp
bGwgZmxpY2tlciBhZ2FpbiBhbmQgYWdpYW7jgIIKPiBTbyBpdCBicmVhayBzb21lIGZ1bmN0aW9u
44CCCgpEaWQgeW91IGhhdmUgZ2FtbWEgb24/IFRoZSBzY3JlZW4gZmxpY2tlcmVkIGZvciBtZSB3
aGVuIEkgcmFuIHNvbWV0aGluZyAKd3JpdGluZyBnYW1tYSBMVVQgZnJlcXVlbnRseSBiZWNhdXNl
IG9mIGRpc2FibGUgc3RlcCBJIHJlY2tvbi4KCj4gSSd2ZSBiZWVuIHF1aXRlIGJ1c3kgbGF0ZWx5
LCBhbmQgaXQgd2lsbCB0YWtlIHNvbWUgdGltZSBiZWZvcmUgSSBjYW4gYW5hbHl6ZSB3aGF0IHRo
ZSBzcGVjaWZpYyByZWFzb24gaXMuCgpOcCwgSSB3aWxsIHRyeSB0byByZXByb2R1Y2UgdGhpcyBi
ZWhhdmlvciB3aXRoIHdlc3RvbiBvbiBQaW5ldGFiMiBpbiB0aGUKbWVhbnRpbWUuCgpCZXN0IFJl
Z2FyZHMsIFBpb3RyIFphbGV3c2tpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
