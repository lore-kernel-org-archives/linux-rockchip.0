Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF25606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 00:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GgW0DB/9;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=DzxT93fh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7mZCnUASsjLHOMZi1a3oS151O8RvdXb9Un7bVRbG2wk=; b=GgW0DB/9ci/I+FRxesEW7F5w8V
	qiUz7yN2SuuNUFdZHehATDuXEhhz0nfIS9ATSUl+3RjoGamiEim772XKCiKspxksrLqn1tRNE27QF
	CFPxPFDPoilb6aowGZquF2AOgaj9DsEtTiFKo2XxwdDuKiEzqNSOz2UNNhJJCVHMQ36VslIz5xSg6
	3Zuo72/2O3Z+sGZYkW7zwzCjI5jzO9yVEssdSxh2pXYKB5VoD4xjKAXJ1vhX/44h7VzhsSVZF1Es7
	se1RgkRo9NxeibYOlArIp1721iuMFkOp3Ic0bQZZNf8n7uR24sauk0DemvZOIs0bYzIssdQUfrTu9
	HaCjYOlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLVIl-00000003XuI-3Txs;
	Tue, 27 Oct 2026 00:44:31 +0000
Received: from mail-m82236.xmail.ntesmail.com ([156.224.82.236])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLVIh-00000003Xsy-3Us6;
	Tue, 27 Oct 2026 00:44:30 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 526dfc65c;
	Tue, 27 Oct 2026 08:44:12 +0800 (GMT+08:00)
Message-ID: <ff204558-dc22-4d38-b0dc-2c727f983f9f@rock-chips.com>
Date: Tue, 27 Oct 2026 08:44:09 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Rob Herring <robh@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 0/2] PCI: rockchip-host: Retry training and hot-reset
 a JMB585 on RK3399
To: Igor Velkov <iav@iav.lv>
References: <20261024-rockchip-pcie-resume-v1-0-58e54a5cf5f1@iav.lv>
 <4316c1da-f7ff-4fa5-a330-512800474e45@rock-chips.com>
 <20261026-rockchip-pcie-shawn-reply-1@iav.lv>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261026-rockchip-pcie-shawn-reply-1@iav.lv>
X-HM-Tid: 0aa17ad0966603a4kunmdefc543f472a32
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZGkJLVk9LH0IYHUNPSRodQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=DzxT93fhhkUwadv+bNoSjWR3pa5Fg+2lO5H9x8aSzNv8PZ+Qij6U/dj5xWoWHaGEJ7t4dnDPK6w9r5pe6dQJwgGwOTd768UARevM+xTQPOP53tGaz1hrcKKHOiDtaMitWBQMU76SNQ0Dbod6URXqogHljnpFuJAa1C0tI+KJP2I=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=5/VwNhxDqFDjAFzXiE0EgjT10Of3veuyQvr8j5Q5Fl8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_174428_470864_BFBE9FA1 
X-CRM114-Status: GOOD (  15.62  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTAvMjcg5pif5pyf5LqMIDI6MjgsIElnb3IgVmVsa292IOWGmemBkzoKPiBIaSBT
aGF3biwKPiAKPiBPbiAyMDI2LzEwLzI2LCBTaGF3biBMaW4gd3JvdGU6Cj4+IFRoZSBob3N0IGNh
bm5vdCBkaXN0aW5ndWlzaCB0aGlzIGNhc2UuCj4gCj4gVGhlIGNvbnRyb2xsZXIgc2VlbXMgdG8g
dGVsbCBiZWZvcmUgdGhlIGNvbmZpZyByZWFkLiBPbiAyNiBPY3QgdGhlCj4gbGluayBjYW1lIGJh
Y2sgMi45LTQuNSBtcyBhZnRlciBhIGhvdCByZXNldCBpbiB+NTAgY2FzZXMsIGFsbCBmaW5lLAo+
IGFuZCAxMC45LTM1LjQgbXMgaW4gOCwgZWFjaCBmb2xsb3dlZCBieSBhbiBhYm9ydCBvbiB0aGUg
bmV4dCBjb25maWcKPiByZWFkLiBQQ0lFX0NMSUVOVF9CQVNJQ19TVEFUVVMwIHJlYWQgMHgyNDAg
YWZ0ZXIgZWFjaCBvZiA0IHNsb3cgbGlua3MKPiBhbmQgMHgxMjQwIGFmdGVyIGVhY2ggb2YgMTYg
ZmFzdCBvbmVzLiBXaGF0IGRvZXMgYml0IDEyIG1lYW4sIGFuZCBjYW4KPiB0aGUgZHJpdmVyIHJl
bHkgb24gaXQgYWZ0ZXIgbGluayB0cmFpbmluZz8KPiAKCkkgaGF2ZSBubyBpZGVhIGFib3V0IGl0
LiBUaGUgUENJRV9DTElFTlRfQkFTSUNfU1RBVFVTMCBzYXlzOgoKMTQ6MTIgIAlSTyAgbWF4X3Bh
eWxvYWRfc2l6ZQoKU28geW91IGFyZSBzYXlpbmcgZGlmZmVyZW50IE1QUyBpbiBkaWZmZXJlbnQg
Y2FzZXMsIG5vdCBsaW5raW5nIHN0YXR1cy4KCgo+PiBZb3UndmUgdHJpZWQgUEVSU1QjIHdpdGgg
dGhlIHBhdGNoIDEgYXBwbGllZC4gU28gcGVyaGFwcyBpdCdzIGRvZXNuJ3QKPj4gaGVscC4KPiAK
PiBQYXRjaCAxIHB1bHNlcyBQRVJTVCMgb25seSBhZnRlciBhIHRyYWluaW5nIHRpbWVvdXQuIFdp
dGggUEVSU1QjIGluCj4gdGhlIERUIGEgc2xvdyBsaW5rIHN0aWxsIG9jY3VycmVkICgyNSBtcywg
dGhlbiBhbiBhYm9ydCkuCj4gUmUtaW5pdGlhbGl6aW5nIHRoZSBwb3J0LCB3aXRob3V0IFBFUlNU
IyBvciBhIHBvd2VyIGN5Y2xlLCBicm91Z2h0Cj4gZWFjaCBvZiA0IHNsb3cgbGlua3MgYmFjayBp
biAyLjkgbXMgd2l0aCB0aGUgZW5kcG9pbnQgYW5zd2VyaW5nLgo+IAo+PiBJJ3ZlIGF0dGFjaGVk
IGEgdmVuZG9yJ3MgZGVidWcgcGF0Y2gsIHBlcmhhcHMgeW91IGNvdWxkIHRyeSBpdCB3aXRob3V0
Cj4+IHlvdXIgcGF0Y2guCj4gCj4gSXQgaG9va3MgZG9fc2Vycm9yKCkgb25seSBhbmQgcmVnaXN0
ZXJzIGFmdGVyIHBjaV9ob3N0X3Byb2JlKCkuIEhlcmUKPiBib3RoIFNFcnJvcnMgYW5kIHN5bmNo
cm9ub3VzIGV4dGVybmFsIGFib3J0cyBvY2N1ciwgYXQgcHJvYmUgYW5kIG9uCj4gcmVzdW1lICh0
aGUgY292ZXIgaGFkIHRoYXQgd3JvbmcpLCBzbyB3ZSB3aWxsIG1vdmUgdGhlIGhvb2sgYmVmb3Jl
Cj4gcGNpX2hvc3RfcHJvYmUoKSB3aGVuIHdlIHRyeSBpdC4KClllcC4KCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+IAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
