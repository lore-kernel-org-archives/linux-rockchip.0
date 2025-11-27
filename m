Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF660D11183
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 07:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvkuym8cz/N74g0Gntq4wIJIvrNgyGShw5xr28J0b9Y=; b=qOK30vW/Dsr6QP
	WdeU1SCwx7I9Na+b6B0ivA9cTk4FUYtB3WEwRQSsRgLA0+gvbmC+sM+74ccz0M03r4YTSDRo88yLo
	kiqzlWb7Lb7EGC1zcpL5giuVO50TDdLPp90C7T2/BId0tqykwTHkeRX3kpHIpIdy3qBEDNx8QtWVK
	klC64kGMoUF3Z+rZ91sl5zYX844vVuHVTPjDMwt4UTzsAiuNbfNtJuUvutT43VNe72nqMCUlLKJPu
	XTQUxgzGAjbPUIQPH/MROuOQq5DT7GIWBss5Vj3/vhS3aYJZvqritHckLpm8KoSCx//JVdzT7/22q
	8/hAQDTrntFcpx4Nr+Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWXc-0000000G8W1-3fUB;
	Thu, 27 Nov 2025 07:35:48 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWXZ-0000000G8SX-2qdj;
	Thu, 27 Nov 2025 07:35:47 +0000
X-QQ-mid: zesmtpip4t1764228896tea6b6582
X-QQ-Originating-IP: m2NFOC1l7CtxMECnINXb88RBau0mbZAl118Ji8E0/s0=
Received: from [IPV6:240f:10b:7440:1:c95a:801a ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 27 Nov 2025 15:34:53 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4363788777336798568
Message-ID: <F11F0D13437B012D+0c15c5ca-f64f-49f1-9ff5-26b88d59ff59@radxa.com>
Date: Thu, 27 Nov 2025 16:34:53 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] PCI: dwc: Revert Link Up IRQ support
From: FUKAUMI Naoki <naoki@radxa.com>
To: Niklas Cassel <cassel@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Krishna chaitanya chundru <quic_krichai@quicinc.com>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
References: <20251111105100.869997-8-cassel@kernel.org>
 <mt7miqkipr4dvxemftq6octxqzauueln252ncrcwy6i2t7wfhi@jtwokeilhwsi>
 <aSRli_Mb6qoQ9TZO@ryzen>
 <7667E818D7D31A4E+cf7c83d4-b99c-469d-8d46-588fc95b843f@radxa.com>
Content-Language: en-US
In-Reply-To: <7667E818D7D31A4E+cf7c83d4-b99c-469d-8d46-588fc95b843f@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M8eXz3YJtIUHVeCj2S4KR1MZmmoX2rpgqITCRKAByPTmRvDFqhCMxd9n
	fNsp4rjiFxs2pmH9ymwz9fBj11QjGjwfkT4el0ZZ6vPUpiCbAr01EBvtAXghxjxOFGdpRZ1
	BhqzamevYG3sA7sEeeouEtU4Sd7zeFRC2Ftta9hZsJGZFVhQ1srNKcdfBWuGSjI7HZBTJOt
	CgvQe6zMaeKvp+OryiLX9bZGLwMxvBFMkK5qwfxbjIumDlBDiKovdhnBXKO4UOHOhoeTqdY
	p6RhrWqh3wP/y1Pai/k1HvqkFQJ+dEIkLqHluT7b5WbxxWdLJHDkI2Wtek/J9KKqOoVeLm+
	/E+ujymEQlD1ZG0xqYV05z4sRcCOAS98kn1VDeJsnNZVeOXCUi1hwGefH67EZgo1rqXLE5k
	OqtKbSD8Laz77TYqD0ZCTBryrLVFqdmWQzX3iMqudOGszbKQZhK9atNQ97rrwdS9xxshz5K
	/fanU15gi5cK+cgvb52kr28bPEl3jsCz7/Ex6hQT7i+kvYQuWc4fNwEPQUvTEZt7ozHHFni
	LCvEJuYnIJkjb+8gaRJQd4lZYqPkUJUeoR2qZeW3McbpKU7TBd/qXJ9lIt7LaVHiu6LX/XJ
	3Gv057ENBY2itXgM2mXhv5sGXkfjrxJLVf+00/ZkjZlK2CJ9OKB+JeBYL2c8mACk0LvS0K2
	L4qyzB6lJkVNZB94iyqIYwEvjCNjIjuAKv6UKtFHFnqWFaigyFCe4COxiyJhIz1/E47DS7j
	p5nIa3RdtHGsfwASEfXYUsNxIBrWm23LScRCGyHKyiFRDlaLC3nCn6KCc+cJvcmJ8pKkhjS
	rrASjkG12MZa/2ZLfMnDJAFvLPa3uuHBP38VS+3036P66v5mVPUev2WHSoYTIAwrT1tm4+B
	9VCvJK23m7GzZDdO29ss+Y9f47W/o5cLMvy66PrnGufFpt6vVbFt73K2+LCTYkG1dwzXY6v
	jh/O6bmqMTDgOiHzNiHIQ/Qpm78kIjvKhyGtjtCA5iE8/0Jh9uAJ3YjBfzFGA7g1AwqhO+Z
	ancZMogA==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_233546_207028_42631DDF 
X-CRM114-Status: GOOD (  24.65  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgYWxsLAoKSSdtIHZlcnkgc29ycnksIGJ1dCBteSBST0NLIDVDIGFwcGVhcnMgdG8gYmUgdW5y
ZWxpYWJsZS4gKEl0IHdvcmtlZCBmaW5lIAp3aXRoIHZhbmlsbGEgdjYuMTMsIHNvIEkgdGhvdWdo
dCBpdCB3YXMgZmluZS4pCgpJIHJlcGxhY2VkIGl0IHdpdGggYW5vdGhlciA1QyAoTGl0ZSksIGFu
ZCBub3cgZXZlcnkgbWV0aG9kIChOaWtsYXMncyAKcGF0Y2gsIFNoYXduJ3MgcGF0Y2gsIGFuZCBh
cHBseWluZyBwYXRjaCAxIGFuZCAyKSBzZWVtcyB0byB3b3JrLgoKVGVzdGluZyB3aXRoIHRoZSA1
QyBMaXRlIGlzIHN0aWxsIG5vdCBlbm91Z2gsIGZ1cnRoZXIgdGVzdGluZyBpcyAKcmVxdWlyZWQs
IGJ1dCBJIHdpbGwgcHJvYmFibHkgbmVlZCB0byByZXZpc2UgbXkgdGVzdCByZXN1bHRzLgoKKFRo
b3NlIHNlZW0gdG8gd29yayBvbiBST0NLIDVBLzVCLCBidXQgdGhleSBhbHNvIG5lZWQgZnVydGhl
ciB0ZXN0aW5nLikKCkkgdHJ1bHkgYXBvbG9naXplIGZvciBteSB1bnJlbGlhYmxlIHRlc3Rpbmcu
CgpCZXN0IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhl
bikgQ28uLCBMdGQuCgpPbiAxMS8yNi8yNSAyMjozMCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBI
aSBOaWtsYXMsCj4gCj4gSSBhcG9sb2dpemUgZm9yIHRoZSBkZWxheWVkIHJlc3BvbnNlLgo+IAo+
IE9uIDExLzI0LzI1IDIzOjAyLCBOaWtsYXMgQ2Fzc2VsIHdyb3RlOgo+PiBPbiBNb24sIE5vdiAy
NCwgMjAyNSBhdCAwNjowNzo0NFBNICswNTMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6
Cj4+PiBXaGlsZSBJIHN1Z2dlc3RlZCB0byByZXZlcnQgdGhlIGxpbmsgdXAgSVJRIHBhdGNoIGZv
ciByb2NrY2hpcCAKPj4+IGVhcmxpZXIsIEkgZGlkbid0Cj4+PiBleHBlY3QgdG8gZHJvcCB0aGUg
c3VwcG9ydCBmb3IgUWNvbS4gVGhlIHJlYXNvbiBpcywgb24gUWNvbSBTb0NzLCB3ZSAKPj4+IGhh
dmUgbm90Cj4+PiBzZWVuIGEgY2FzZSB3aGVyZSBwZW9wbGUgY29ubmVjdCBhIHJhbmRvbSBQQ0ll
IHN3aXRjaCBhbmQgc2F3IAo+Pj4gZmFpbHVyZXMuIE1vc3Qgb2YKPj4+IHRoZSBRY29tIHVzZWNh
c2VzIHdlcmUgYXJvdW5kIHRoZSBNLjIgYW5kIG90aGVyIHByb3ByaWV0YXJ5IAo+Pj4gY29ubmVj
dG9ycy4gVGhlcmUgaXMKPj4+IG9ubHkgb25lIGluLWhvdXNlIFBDSWUgc3dpdGNoIHRoYXQgaXMg
YmVpbmcgYWN0aXZlbHkgdXNlZCBpbiBvdXIgCj4+PiBwcm9kdWN0cywgYnV0Cj4+PiBzbyBmYXIs
IG5vbmUgb2YgdGhlIGJvb3Rsb2FkZXJzIGhhdmUgdHVybmVkIHRoZW0gT04gYmVmb3JlIGtlcm5l
bCAKPj4+IGJvb3RpbmcuIFNvCj4+PiBrZXJuZWwgcmVsaWVzIG9uIHRoZSBuZXdseSBtZXJnZWQg
cHdyY3RybCBkcml2ZXIgdG8gZG8gdGhlIGpvYi4gRXZlbiAKPj4+IHRob3VnaCBpdAo+Pj4gYWxz
byBzdWZmZXJzIGZyb20gdGhlIHNhbWUgcmVzb3VyY2UgYWxsb2NhdGlvbiBpc3N1ZSwgdGhpcyBz
ZXJpZXMgCj4+PiB3b24ndCBoZWxwIGluCj4+PiBhbnkgd2F5IGFzIHB3cmN0cmwgY29yZSBwZXJm
b3JtcyByZXNjYW4gYWZ0ZXIgdGhlIHN3aXRjaCBwb3dlciBPTiwgCj4+PiBhbmQgYnkgdGhhdAo+
Pj4gdGltZSwgaXQgd2lsbCBiZSB2ZXJ5IGxhdGUgYW55d2F5Lgo+Pj4KPj4+IFNvIEknbSBoYXBw
eSB0byB0YWtlIHRoZSByb2NraGlwIHBhdGNoZXMgZnJvbSB0aGlzIHNlcmllcyBhcyB0aGV5IGZp
eCAKPj4+IHRoZSByZWFsCj4+PiBpc3N1ZSB0aGF0IHBlb3BsZSBoYXZlIHJlcG9ydGVkLiBCdXQg
b25jZSB0aGUgcHdyY3RybCByZXdvcmsgc2VyaWVzIAo+Pj4gZ2V0cyBtZXJnZWQsCj4+PiBhbmQg
dGhlIHJvY2tjaGlwIGRyaXZlcnMgc3VwcG9ydCB0aGVtLCB3ZSBjYW4gYnJpbmcgYmFjayB0aGUg
cmV2ZXJ0ZWQgCj4+PiBjaGFuZ2VzLgo+Pgo+PiBGVUtBVU1JIE5hb2tpLCBqdXN0IHRvIGNvbmZp
cm06Cj4+Cj4+IE5laXRoZXIgbXkgc3VnZ2VzdGVkIGFwcHJvYWNoOgo+PiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1wY2kvYVJIZGVWQ1kzclJteGU4MEByeXplbi8KPj4KPj4gbm9yIFNo
YXduJ3Mgc3VnZ2VzdGVkIGFwcHJvYWNoOgo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC1wY2kvZGM5MzI3NzMtYWY1Yi00YWY3LSAKPj4gYTBkMC04Y2M3MmRmYmQzYzdAcm9jay1jaGlw
cy5jb20vCj4+Cj4+IHdvcmtlZCBmb3IgeW91Pwo+IAo+IFllcywgSSByZS10ZXN0ZWQgdGhlIHR3
byBtZXRob2RzIG1lbnRpb25lZCBhYm92ZSwgc2VwYXJhdGVseSwgb24gdjYuMTgtIAo+IHJjNywg
YnV0IG5laXRoZXIgb2YgdGhlbSByZXNvbHZlZCB0aGUgaXNzdWUgaW4gbXkgZW52aXJvbm1lbnQg
KFJPQ0sgNUMgKyAKPiBBU00yODA2KS4KPiAKPj4gSWYgc28sIEkgZG9uJ3Qgc2VlIG1hbnkgYWx0
ZXJuYXRpdmUgYnV0IGZvciBNYW5pIHRvIGFwcGx5IHBhdGNoIDEgYW5kCj4+IHBhdGNoIDIgZnJv
bSB0aGlzIHNlcmllcy4KPiAKPiBJIGJlbGlldmUgYXBwbHlpbmcgcGF0Y2ggMSBhbmQgcGF0Y2gg
MiBzaG91bGQgYmUgc3VmZmljaWVudC4KPiAKPiAtLS0tCj4gCj4gSW5jaWRlbnRhbGx5LCAocHJv
YmFibHkpIHdoaWxlIGFwcGx5aW5nIHBhdGNoIDEgYW5kIHBhdGNoIDIsIEkgaGF2ZSAKPiBlbmNv
dW50ZXJlZCB0aGUgZm9sbG93aW5nIGlzc3VlIHNldmVyYWwgdGltZXM6Cj4gCj4gW8KgwqDCoCAx
LjcwOTYxNF0gcGNpZXBvcnQgMDAwNDo0MTowMC4wOiBvZl9pcnFfcGFyc2VfcGNpOiBmYWlsZWQg
d2l0aCByYz0xMzQKPiBbwqDCoMKgIDEuNzEwMjA4XSBwY2llcG9ydCAwMDA0OjQxOjAwLjA6IFVu
YWJsZSB0byBjaGFuZ2UgcG93ZXIgc3RhdGUgZnJvbSAKPiBEM2NvbGQgdG8gRDAsIGRldmljZSBp
bmFjY2Vzc2libGUKPiAKPiBJIGFtIHN0aWxsIGludmVzdGlnYXRpbmcgdGhpcyBtYXR0ZXIsIGFu
ZCB0aGUgY29uZGl0aW9ucyB1bmRlciB3aGljaCBpdCAKPiBvY2N1cnMgYXJlIGN1cnJlbnRseSB1
bmtub3duLgo+IAo+IEJlc3QgcmVnYXJkcywKPiAKPiAtLSAKPiBGVUtBVU1JIE5hb2tpCj4gUmFk
eGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KPiAKPj4gS2luZCByZWdhcmRzLAo+PiBO
aWtsYXMKPj4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
