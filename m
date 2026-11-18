Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64888606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 09:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kR7Fjuv2;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=TGHllOXg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9RMxRs/PGf7g3ZRet6QIWuh2GJ/Ke0Us50nep+4+LT8=; b=kR7Fjuv2dGqPOebyHyA9Fku+Op
	wIFVSHYi5M+vpo+PaFe2pmOk+bePCM/QgsH6ZYuwSozAmHyKfIY8A3jsEQBR3yV14cSjZEISRyMnF
	PC1T6lqI+JPaBK/WteXjmx7aI5Kcenfzvw+xBKH7EMDnEDx4Qp/T2+fwFvJFMT4rLoUbSxwH2SU+O
	ruzr+/tSpH1DJ4RZsPtNkiLeOv12mlmwrH1sG+21utmf1OdxmJKBvtDYjI2vtQ5z4APOai9Ava47V
	t1gk7yNNG1FErN12gz5JIGiegtlOlKP7zvFgTD5XooWX20SalyEKBpl7dq3xL6soqd5njf+SSCDHX
	01BUL9aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTc1M-00000008OB7-0m0o;
	Wed, 18 Nov 2026 09:32:04 +0000
Received: from mail-m1973172.qiye.163.com ([220.197.31.72])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTc1I-00000008OA6-2rTX;
	Wed, 18 Nov 2026 09:32:02 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 551f9ad52;
	Wed, 18 Nov 2026 17:16:55 +0800 (GMT+08:00)
Message-ID: <daea6316-bf37-4b9d-92a7-945f34cd719d@rock-chips.com>
Date: Wed, 18 Nov 2026 17:16:54 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] accel/rocket: Fix the extra iommu_group_get call in
 rocket_job_handle_irq
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Daniel Drake <ddrake@baylibre.com>, Chaoyi Chen <kernel@airkyi.com>,
 Oded Gabbay <ogabbay@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>, LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
References: <20260814022453.437-1-kernel@airkyi.com>
 <20260814022453.437-4-kernel@airkyi.com>
 <0e722f43-f08c-4636-bf3e-0dbe991bf6a0@baylibre.com>
 <72957827-fde8-4f4b-80a9-050d2f112316@rock-chips.com>
 <CAPsqS2QhAortoDOt9MBizTr4RCDhChr1xLF13NNTUYjyFMakhg@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CAPsqS2QhAortoDOt9MBizTr4RCDhChr1xLF13NNTUYjyFMakhg@mail.gmail.com>
X-HM-Tid: 0aa1edf1e46a03a7kunm2355c227669381
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaS0pOVkIaSUwaHU9IGB8eQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=TGHllOXgyJL+s/aCvjVJ5CotwyJ8QVPI/4twhwqsW0yPCG59Dyci1TvNZNY8uF8lkHn6iTHPcu3BYeeZYEJT9vDcaSjDLjsPIqJAta/qrMpcE3P2omQfiW8faKgRjBQWz6EtL+tRQMpKvJkTaMMD1RO2aMNdNB/oU9TNuILOP3c=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=I3smdXzbgBpgrivukeP0fqIaIFjz2n/NTWdA0NUSV/Y=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_013201_202805_96C0126A 
X-CRM114-Status: GOOD (  22.97  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgVG9tZXUsCgpPbiAxMS8xOC8yMDI2IDQ6NTggUE0sIFRvbWV1IFZpem9zbyB3cm90ZToKPiBI
aSBDaGFveWkgYW5kIERhbmllbCwKPiAKPiBPbiBXZWQsIE5vdiAxOCwgMjAyNiBhdCAzOjI54oCv
QU0gQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4g
SGkgRGFuaWVsLAo+Pgo+PiBPbiAxMS8xOC8yMDI2IDU6NTMgQU0sIERhbmllbCBEcmFrZSB3cm90
ZToKPj4+IE9uIDE0LzA4LzIwMjYgMDM6MjQsIENoYW95aSBDaGVuIHdyb3RlOgo+Pj4+IEZyb206
IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPj4+Pgo+Pj4+IFRoZSBy
b2NrZXQgYXR0YWNoZXMgdGhlIElPTU1VIGdyb3VwIGluIHJvY2tldF9qb2JfcnVuKCkgYW5kIGRl
dGFjaGVzIGl0Cj4+Pj4gaW4gcm9ja2V0X2pvYl9oYW5kbGVfaXJxKCkuIENhbGxpbmcgIGlvbW11
X2dyb3VwX2dldCgpIGluCj4+Pj4gcm9ja2V0X2pvYl9oYW5kbGVfaXJxKCkgY2F1c2VzIHRoZSBy
ZWZlcmVuY2UgY291bnQgdG8gaW5jcmVhc2UKPj4+PiB1bmV4cGVjdGVkbHkuIEFuZCB0aGlzIGNh
dXNlcyByb2NrZXRfY29yZV9maW5pKCkgdG8gZmFpbCB0byByZWxlYXNlIHRoZQo+Pj4+IElPTU1V
IGdyb3VwLCBsZWFkaW5nIHRvIGEgcmVzb3VyY2UgbGVhay4KPj4+Cj4+Pgo+Pj4gV2hpbGUgdGhl
cmUgaXMgYSBsZWFrIGhlcmUsIEkgdGhpbmsgc2FzaGlrbyBjb3JyZWN0IGluIHNheWluZyB0aGlz
IGNoYW5nZSB3b3VsZCBpbnRyb2R1Y2UgYSBjcmFzaCBiZWNhdXNlIGNvcmUtPmlvbW11X2dyb3Vw
IGNhbiBiZSBzZXQgdG8gTlVMTCBiZWZvcmUgdGhpcyBjb2RlcGF0aCBpcyByZWFjaGVkLiAgVGhh
dCBtaWdodCBiZSBhIHNpbXBsZSBmaXguCj4+Pgo+Pj4+IEZpeGVzOiA2NThlYmVhYzMzNTEgKCJh
Y2NlbC9yb2NrZXQ6IEFkZCBJT0NUTCBmb3IgQk8gY3JlYXRpb24iKQo+Pj4KPj4+Cj4+PiBXcm9u
ZyBjb21taXQgbWVudGlvbmVkIGhlcmUuCj4gCj4gSSBmaXhlZCB0aGlzIG9uZSB3aGVuIGFwcGx5
aW5nLgo+IAo+PiBUaGFua3MgZm9yIHlvdSByZXZpZXcuIFRoaXMgaXMgaW5kZWVkIGEgcHJvYmxl
bS4KPiAKPiBJJ20gc29ycnkgYnV0IEkgaGFkIGFscmVhZHkgYXBwbGllZCB0aGlzIHBhdGNoIHRv
IGRybS1taXNjLWZpeGVzIGFuZAo+IHB1c2hlZCB3aGVuIEkgcmVhZCB0aGlzLiBJIGhhdmUgbG9v
a2VkIGF0IGZpeGluZyBqdXN0IHRoaXMgY3Jhc2gsIGJ1dAo+IGhhdmUgZGVjaWRlZCBhZ2FpbnN0
IGl0IGJlY2F1c2Ugd2UgYW55d2F5IGNyYXNoIGluIGRybV9zY2hlZCBvbiBjb3JlCj4gdW5iaW5k
IHdoZW5ldmVyIGEgY2xpZW50IGlzIGFjdGl2ZSAobm8gbmVlZCB0byBoYXZlIGEgam9iIGluIGZs
aWdodCksCj4gZHVlIHRvIHRoZSBzY2hlZCBlbnRpdGllcyBrZWVwaW5nIGEgcmVmZXJlbmNlIHRv
IHRoZSBzdGFsZSBzY2hlZHVsZXIuCj4KCk9oLCB0aGF0J3MgdHJ1ZSwgYnV0IGl0IHNlZW1zIG5v
IG1lcmdlIG5vdGlmaWNhdGlvbiBlbWFpbCB3YXMgc2VudCBvdXQ/IAoKaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9taXNjL2tlcm5lbC8tL2NvbW1pdC81YzRhZWFmY2FjOGM0NmJl
N2IwOGI4Njc5NWJhYTY0NDUzZWI2OGFhCiAKPj4gQW5kIGl0IGhhcyBiZWVuIGEgbG9uZyB0aW1l
IHNpbmNlIEkgc2VudCB0aGlzIHNlcmllcy4gOikKPj4KPj4gRHVyaW5nIHRoaXMgdGltZSwgSSBo
YXZlIHNlZW4gYSBsb3Qgb2Ygc2ltaWxhciB3b3JrLiBGb3IgZXhhbXBsZSwgd29yawo+PiBzaW1p
bGFyIHRvIHBhdGNoMSBpcyBoZXJlWzBdLiBBbmQgc29tZSBvZiB0aGUgaXNzdWVzIG1lbnRpb25l
ZCBieQo+PiBTYXNoaWtvYXJlIGFsc28gYmVpbmcgZml4ZWQgYnkgaW4tZmxpZ2h0IHBhdGNoZXMg
bGlrZVsxXS4KPiAKPiBDb3JlIHJlbW92YWwgbmVlZHMgdG8gYmUgZml4ZWQgYXMgYSB3aG9sZTog
ZGV0YWNoIHRoZSBvcGVuIGZpbGVzJwo+IGVudGl0aWVzIGZyb20gdGhlIHNjaGVkdWxlciB0aGF0
IGdvZXMgYXdheSwgY29tcGxldGUgb3IgY2FuY2VsIHRoZSBqb2IKPiBpbiBmbGlnaHQsIGFuZCBx
dWllc2NlIHRoZSBqb2IgaW50ZXJydXB0IGJlZm9yZSB0aGUgcmVzb3VyY2VzIGl0IHVzZXMKPiBh
cmUgcmVsZWFzZWQuCj4gCj4+IEknbSBub3Qgc3VyZSB3aGV0aGVyIEkgc2hvdWxkIHNsb3cgZG93
biB0aGUgc3VibWlzc2lvbiwgc2luY2UgaXQgc2VlbXMKPj4gVG9tZXUgaXMgcXVpdGUgYnVzeSBh
bmQgaGFzbid0IGdvdHRlbiB0byBzb21lIG9mIHRoZSBiYWNrbG9nZ2VkIHBhdGNoZXMuCj4gCj4g
SSdtIHNvcnJ5IGFib3V0IHRoZSBiaWcgYmFja2xvZyBvZiBwYXRjaGVzLiBXaXRoIEhlaWtvIGFu
ZCBEYW5pZWwncwo+IGhlbHAgSSBleHBlY3QgdG8gZ2V0IGl0IGNsZWFyZWQgc29vbiBhbmQgYmUg
bW9yZSByZXNwb25zaXZlLgo+IAoKVGhhbmtzIGZvciB5b3VyIGV4Y2VsbGVudCB3b3JrISBJIHRo
aW5rIHBhdGNoNCBjb3VsZCBhbHNvIGJlIG1lcmdlZD8gClRoYXQgd2F5LCBwZW9wbGUgb24gdGhl
IHJvY2tjaGlwIG1haWxpbmcgbGlzdCBjYW4gYWxzbyBjb252ZW5pZW50bHkgaGVscAp1cyByZXZp
ZXcgdGhlc2UgcGF0Y2hlcy4gOi0pCgotLSAKQmVzdCwgCkNoYW95aQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
