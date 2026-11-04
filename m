Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C89606A33C
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 09:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=udf1sGW+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=bY/HWDAQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IuqBvicKHbKRbnltGpboZI8kO92HjNdH+q8cPhOA+tk=; b=udf1sGW+XpcRebfX2hniwMdehl
	fmMyNCUk35GwVCDDovLyUpHs4ewMogIy+IKzw0/04X5wfPukm1J5uL0psCmQ8P3fVTz+eJu1vi6Yu
	S7cNg+En5pJqw14bl9uCkCCMHn9uIINYYBk3KMRP4Ws7T321SNcn008MtJ7i5dci1fDHNNFc2X3jj
	Sb8jHrGXZJdSMZjrP185VMainvcqyRpfdTMZViZfI3StR2tMmKYM/b6n6QvoYvuDoJ78zBrReP4Eh
	srmpU0B8EOogMksEtyNIbxanIBfs0jHZUI9M52pC0QBAuRm41edXicrj8gM4ACIBpmWaFSs7ghjat
	NHrd2uxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOWuK-00000004p7k-2zfc;
	Wed, 04 Nov 2026 09:03:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOWuI-00000004p5y-02B4;
	Wed, 04 Nov 2026 09:03:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=iHYdHhRmbjQcxscHDcCpZ8acQ3uHnfxu23ktn4nG4Lg=; b=bY/HWDAQ7lHwSJ9XPB6FqUu/AE
	wcwm0H9izENxVo4LThMrAkZiy0MutIj7mridbKtjUB3BXxoXTqd1q6nuQFEl2B3wIxvkpluq2tK7h
	pVO6dlRzHH+P+5d1XYcb6OlVt051mRhfQYqPAY7F6utvBprm6uu6mZ5Jkx1c8k1+sl2WtTucsh2oe
	FdDM0O5rcTV0AeBawde/oLUHPdbiVLYPOsywJ1HSpzpvxwgpvZE/OR3Nj2QG/ALgcj9oj8+KU3rU6
	LUe92DhkYZlooqVoC4MNJsgAdXUVODrATFTqm9MaZKE1hxd6QqKPDda3HdNKgIyYUBK+XnkpK6b0X
	n1jdwV1Q==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Oded Gabbay <ogabbay@kernel.org>,
 Igor Paunovic <royalnet026@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Sidong Yang <sidong.yang@furiosa.ai>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jiaxing Hu <gahing@gahingwoo.com>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jonas Karlman <jonas@kwiboo.se>, Guangshuo Li <lgs201920130244@gmail.com>,
 =?UTF-8?B?SMO8c2V5aW4=?= BIYIK <boogiepop@gmx.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v2 01/11] accel/rocket: search every core slot when a core is
 removed
Date: Wed, 04 Nov 2026 10:03:13 +0100
Message-ID: <49835528.XUcTiDjVJD@diego>
In-Reply-To: <20260922080114.44662-2-royalnet026@gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com>
 <20260922080114.44662-2-royalnet026@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_010346_073262_A2E6690F 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDIyLiBTZXB0ZW1iZXIgMjAyNiwgMTA6MDE6MDQgTWl0dGVsZXVyb3DDpGlz
Y2hlIE5vcm1hbHplaXQgc2NocmllYiBJZ29yIFBhdW5vdmljOgo+IHJvY2tldF9yZW1vdmUoKSBk
ZWNyZW1lbnRzIHJkZXYtPm51bV9jb3JlcyBmb3IgZWFjaCBjb3JlIGl0IHJlbW92ZXMsCj4gd2hp
bGUgZmluZF9jb3JlX2Zvcl9kZXYoKSBzZWFyY2hlcyBzbG90cyAwIHRvIG51bV9jb3JlcyAtIDEu
IFVuYmluZGluZwo+IHRoZSBjb3JlcyBpbiB0aGUgb3JkZXIgdGhleSB3ZXJlIGJvdW5kIHRoZXJl
Zm9yZSBsb3NlcyB0aGUgbGFzdCBvbmU6IGJ5Cj4gdGhlIHRpbWUgaXQgaXMgcmVtb3ZlZCB0aGUg
c2VhcmNoIHJhbmdlIGhhcyBhbHJlYWR5IHNocnVuayBwYXN0IGl0cwo+IHNsb3QsIHNvIGZpbmRf
Y29yZV9mb3JfZGV2KCkgcmV0dXJucyAtMSBhbmQgcm9ja2V0X3JlbW92ZSgpIGdpdmVzIHVwCj4g
d2l0aG91dCBkb2luZyBhbnl0aGluZy4KClsuLi5dCgo+IFR3byBwYXJhZ3JhcGhzIGNoYW5nZWQg
ZnJvbSB0aGUgc3RhbmRhbG9uZSBwb3N0aW5nLCB3aGljaCB0aGlzIHNlcmllcwo+IHN1cGVyc2Vk
ZXM6IHRoZSBvbmUgb24gdW5iaW5kaW5nIGEgc2luZ2xlIGNvcmUgbm93IHBvaW50cyBhdCBwYXRj
aCA0Cj4gaW5zdGVhZCBvZiBzYXlpbmcgd2hhdCBpcyBsZWZ0LCBhbmQgdGhlIHJvdW5kIGNvdW50
cyBhcmUgZHJvcHBlZCBmcm9tCj4gdGhlIGxhc3Qgb25lLiBQb3N0aW5nOgo+IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL3IvMjAyNjA5MDQxMjU5MzYuMjYyMzQtMS1yb3lhbG5ldDAyNkBnbWFpbC5j
b20KPiBUaGUgdHdvIFRlc3RlZC1ieSB0YWdzIGFyZSBmcm9tIHRoYXQgdGhyZWFkLiBUaGUgcm91
bmQgY291bnRzIHdlcmUKPiB0YWtlbiBvbiBhIGtlcm5lbCB0aGF0IGNhcnJpZWQgdGhlIHVzZS1h
ZnRlci1mcmVlIGZpeGVkIGluIDgvMTE7IHRoZXkKPiB3ZXJlIHJlLW1lYXN1cmVkIHdpdGggdGhl
IHdob2xlIHNlcmllcyBhcHBsaWVkLCBzZWUgdGhlIG5vdGVzIG9uIHBhdGNoCj4gNCBhbmQgdGhl
IGNvdmVyIGxldHRlci4gVGhlIHNpbmdsZS1jb3JlIHVuYmluZCBhbmQgcm9ja2V0X29wZW4oKSBj
YXNlcwo+IGluIHRoYXQgcGFyYWdyYXBoIGFyZSAyLzIgb2YgdGhlIGxpZmVjeWNsZSBzZXJpZXMs
IG5vdyByZWJhc2VkIGludG8KPiB0aGlzIG9uZSBhcyBwYXRjaCA0Ogo+IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL3IvMjAyNjA3MzEwNjQ5MzMuMTI1NDgtMy1yb3lhbG5ldDAyNkBnbWFpbC5jb20K
ClNlZW1zIGxpa2UgSSBtZXJnZWQgdGhlIHN0YW5kYWxvbmUgdmVyc2lvbiBpbiBbMF0uCgpUaGUg
Y29kZSBjaGFuZ2UgaXMgdGhlIHNhbWUsIHNvIEkgZ3Vlc3Mgd2UnbGwganVzdCBoYXZlIHRvIGxp
dmUgd2l0aAp0aGUgb2xkZXIgY29tbWl0IGRlc2NyaXB0aW9uIDotKSAuCgpUTDtEUiB0aGlzIGhh
cyBiZWVuIG1lcmdlZCBpbiA3LjMgYWxyZWFkeSBub3cuCgoKSGVpa28KCgpbMF0gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0
L2NvbW1pdC8/aWQ9NmVmZjFkNjlkYWU4MDhhMTUxOGFlZTVhNThkMDg1M2E4ZGIzZjFiZQoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
