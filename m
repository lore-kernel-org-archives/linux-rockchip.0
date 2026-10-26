Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12B7606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 11:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jR8fnZvn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=h4TPHmHX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=S9eTFxk4c0QX5TxkpO+237KJW2W0+6awRrm3Z9OtKzw=; b=jR8fnZvnX1jx8E+H4x1G73PFpD
	WE05a+SJy0FK/W2bm/jLpKWku9UgUF+4F6zribiO9cOHmOLLPU0omKL8VjNyw6Y2XH76NpSsHe1a9
	QWKbZ/9mxgcpOn0kwZQdCM8tgY9pFsC0fynCc0oQ/DT0/HKgeiv2vM1mO3rtmNlDrpNPDh0wSsaNr
	4wgqaOJjgIkV65NSsdLPJCeag8peIfinYoBYguWpHFDIvrz5gsZmDXICdUh6CjF5R0RW/WFxhknSn
	S8F9Lx/3+Otom3nIIV2/GiLH8H4skH0dnjyWz7TjGNAmvU+ubSWFGEDGzD/2W6wNpw3j++PDZq807
	DXj+TwtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJHF-00000002QgV-34PD;
	Mon, 26 Oct 2026 11:54:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJHD-00000002Qfo-3dXm;
	Mon, 26 Oct 2026 11:54:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EMx0UqFgbDRUnMXk5gFL4yABiOYwefPK+nAKxnm2hdU=; b=h4TPHmHX9RJu90VSZsNimFg7ns
	3Jzhr3hQMhcxA8gLFfGhGOvIvh9+Q2ybI4SzLgDMBXhYjTHO7SBN9GVFKb7O5bNL+P5MeLK9YihQS
	34NmFOqIT3DPpvmjl9pSfM15yvxEvwiUnHGX7mGv3+pn9pzakQz4mSAcM3G24wTJIro9AL2lpL7jy
	vC5GEAGAUQMNYgwekifw9aknEzCHRzAk+ralTfDjg7xeIN/Y39py0KOf5XOlwpP0t5616O5c/G09g
	X4UCcURat8BZo1n2rnY0VOrelLvPjXgZWkZzI/DCYFuqI3vi+oUfXKIKVefK9Co3gobQw6wIQhR80
	xpIOY9AQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: 1579567540@qq.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, Ulf Hansson <ulfh@kernel.org>,
 Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 2/2] pmdomain: rockchip: Add RK3572 boot peripheral domains
Date: Mon, 26 Oct 2026 12:53:59 +0100
Message-ID: <3329883.fEcJ0Lxnt5@phil>
In-Reply-To: <d4e92131-ceb8-4143-b8f8-21e7f9638bdb@rock-chips.com>
References: <20261026-add-board-ok3572-c-pmdomain-v3-0-70d614d3d921@qq.com>
 <18fcfe7a-e25a-4516-810f-d787b779914d@rock-chips.com>
 <d4e92131-ceb8-4143-b8f8-21e7f9638bdb@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_045407_922299_F73F2427 
X-CRM114-Status: GOOD (  13.96  )
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgRmlubGV5LAoKQW0gTW9udGFnLCAyNi4gT2t0b2JlciAyMDI2LCAxMjozNzowNiBNaXR0ZWxl
dXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEZpbmxleSBYaWFvOgo+IAo+IOWcqCAyMDI2
LzEwLzI2IDE2OjQ3LCBGaW5sZXkgWGlhbyDlhpnpgZM6Cj4gPgo+ID4g5ZyoIDIwMjYvMTAvMjYg
MTE6MjEsIEN1bmhhbyBMdSB2aWEgQjQgUmVsYXkg5YaZ6YGTOgo+ID4+IEZyb206IEZpbmxleSBY
aWFvIDxmaW5sZXkueGlhb0Byb2NrLWNoaXBzLmNvbT4KPiA+Pgo+ID4+IEFkZCBzdXBwb3J0IGZv
ciB0aGUgUkszNTcyIE5WTTAsIE5WTTEsIFBIUCwgYW5kIFZPUCBwb3dlciBkb21haW5zLgo+ID4+
Cj4gPj4gU2lnbmVkLW9mZi1ieTogRmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMu
Y29tPgo+IAo+IEkgaGF2ZSB0byBwb2ludCBvdXQgdGhhdCB0aGUgY2hhbmdlcyAodGhlIHNodXRk
b3duL3Jlc3RvcmUKPiByZXdvcmssIHBlbmRpbmctc3RhdGUgdHJhY2tpbmcsIGV0Yy4pIHdlcmUg
bm90IG1hZGUgYnkgbWUsIGFuZCBJIGhhdmUKPiBub3QgcmV2aWV3ZWQgdGhlbSBpbiBkZXRhaWwu
IFRoZXJlZm9yZSwgSSBzaG91bGQgbm90IHJlbWFpbiBhcyB0aGUKPiBhdXRob3IgKEZyb206KSBv
ZiB0aGlzIHBhdGNoLCBub3Igc2hvdWxkIG15IFNpZ25lZC1vZmYtYnkgYmUga2VwdCBvbgo+IGl0
LgoKQXMgdGhpcyBzZWVtaW5nbHkgY29tZXMgZnJvbSB0aGUgdmVuZG9yLXRyZWUsIF9zb21lXyBS
b2NrY2hpcCBhdXRob3JzaGlwCnNob3VsZCBiZSBrZXB0IEkgdGhpbms/CgpEbyB5b3UgaGF2ZSBh
IHN1Z2dlc3Rpb24gd2hvIHRoYXQgc2hvdWxkIGJlIG90aGVyIHRoYW4geW91PyA6LSkKCkkgZ3Vl
c3MgYXMgeW91IHN1Z2dlc3RlZCBzcGxpdHRpbmcgdGhpcyBhbnl3YXksIHRoYXQgYXV0aG9yc2hp
cApjb3VsZCBhbHNvIGJlIHNwbGl0LgoKClRoYW5rcwpIZWlrbwoKCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
