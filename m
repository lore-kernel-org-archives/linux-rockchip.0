Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE947E69E93
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 20:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYTeKy3H9gDhRfeNajdkrZ4WNtrxc+O/YGHNMwvUoNc=; b=h+ai2nc3YwK9Zb
	9kUS9pnC4+MBGImxh8SgF5vyStEOv/hDbc87o3vIQpqkOm+XrGH5u956YaEy951M8s7fhWMgTLwHG
	Td5LqNUtL7JKKC7Q1mi6jnMHF6y2OcTiF3iQfVQ3G7GG1ZlZCISMVZIsfJNilKn++o0aSsJ5X3RY1
	cJeUUDPNOPLKx3NXymiHL5XV5qXzjfL9+4P6emM3KE0st9aOKjcVHQqnOVb/iljkQRG7KUbQ9eLx0
	Hfkw96O1iJad6KhoFwmvNrIPLnMlDKIVWxitGiqaI3Dqao5XYdenUpi7iCLW6Nr3LwTnBM80QZekM
	BkhOiow+eCMJqw5suneg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIDRW-00000007SoR-00rK;
	Mon, 02 Dec 2024 20:54:54 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIDRS-00000007SnJ-03wN
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Dec 2024 20:54:52 +0000
X-QQ-mid: bizesmtpip3t1733172800taphm59
X-QQ-Originating-IP: yfeuoxNRc4pZbZXJt/e0w2Jss9XwsDJsEXxWLmTCVTQ=
Received: from [IPV6:240f:10b:7440:1:f61a:d8:e ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 03 Dec 2024 04:53:17 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18155569705233720239
Message-ID: <A07B861A96D3A9C1+08466c7f-2d6d-4264-bb3c-ea2cbc173d72@radxa.com>
Date: Tue, 3 Dec 2024 05:53:17 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: rockchip: fix pwm-fan node for Radxa ROCK
 5B
To: Alexey Charkov <alchark@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, dsimic@manjaro.org
References: <20241130004057.7432-1-naoki@radxa.com>
 <20241130004057.7432-6-naoki@radxa.com>
 <CABjd4YwV+cthjL4uYkpnwxzTzEUWsWEyoOZCkt+Un2iB=GMgxA@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CABjd4YwV+cthjL4uYkpnwxzTzEUWsWEyoOZCkt+Un2iB=GMgxA@mail.gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OS4uHVcO72Zr83IO6CBA6GvW4/bYrOMXcgv/PuVmghvs7Sbub50SXOu8
	wtGW6YyNgLHo63HdpQn/AcDdUN1qY5iSLG/klzixfIYJVGkhHeSJGLlSyOor7Qt5vDh4MO3
	Pg2DglIXf/ngE8EtgvstDK7acb1UqMxhsLbt0WOPlpSAt/2XNIx19ion5Giw8ww+/8nn3Mn
	MVyKPXz+1C0rCk8jpm5EkfDhltSGoi2P9n+eUNuaRxbkClDkloqLQ/aFgaMJANNSb8XdEjR
	VclT13VvgWeOiZbg4dkzbCOVMWDN8rBMdZloPEu3Wwk5SEhHZrN6tE/RIphnD7htC3ceUV0
	j4Orc7s3EHIDmZKhHyqvoryt8XIFag52DDslFyJuYybdas1YEJ8anwjOvZiti1t8pBzc9t7
	WGQRgyMKtNhQsDL5OF6dvHBBcUVonweRZ2G4N63QAa19KteYUAKQnjN8ycB/fZVnMV3TvSb
	aDKd6L+h/x+4m6Sh4jncCgtW9bAuC+cXOPkcOT7a5e9872Z+Qprx5qnLxw7wm37gHZN9Btk
	+M1Qj/y6HqwWt5DJg0mG8anhKVjrvm5JyQqf0SK41xEOd6lkIJdsfvIoCrgPsWJ2Rcdk9Nk
	+jJ9l97EQl1NxCbbjwE6kDoxx4O3HqUhzQtRwNRQujSU+0m/0GrqGhXGsOhg8NHlmSv/rOD
	2tG9x+antVZbxiGLyAiarbYF+Ta2XKUVUNX7SSzLIFEatKkuFTRIteJLooxWxUUnPgLeyqo
	mwTYRY45EL6N9DGZhg25vPGtDvrkP6hxQg+awYOgBISTKLeVzFIodrcrGDpadbyp6rttXHw
	I0Xorq2Fh/JxjyxiJEdv7qftoN3xHY1HN7WoHJOsW1ywaPkyg+be1V5DOi7DlPzN+hxABd0
	EfnoN0xonb3Di19Fvu9Ly44sMvOrfBNa
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_125450_522504_1235575F 
X-CRM114-Status: GOOD (  13.68  )
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

SGkgQWxleGV5IENoYXJrb3YsCgpPbiAxMi8yLzI0IDIyOjM5LCBBbGV4ZXkgQ2hhcmtvdiB3cm90
ZToKPiBIaSBOYW9raSwKPiAKPiBPbiBNb24sIERlYyAyLCAyMDI0IGF0IDU6MzXigK9QTSBGVUtB
VU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+Pgo+PiBmaXggcHJvcGVydGllcyB0
byBtYXRjaCB3aXRoIHZlbmRvciBrZXJuZWwuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEZVS0FVTUkg
TmFva2kgPG5hb2tpQHJhZHhhLmNvbT4KPj4gLS0tCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgfCA2ICsrKy0tLQo+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4+IGluZGV4IDdjODM1OWZlNzEy
YS4uNmEwMmZlYmFlZmI3IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+PiBAQCAtNjQsMTAgKzY0LDEwIEBAIGxlZC0wIHsKPj4K
Pj4gICAgICAgICAgZmFuOiBwd20tZmFuIHsKPj4gICAgICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInB3bS1mYW4iOwo+PiAtICAgICAgICAgICAgICAgY29vbGluZy1sZXZlbHMgPSA8MCAxMjAg
MTUwIDE4MCAyMTAgMjQwIDI1NT47Cj4+IC0gICAgICAgICAgICAgICBmYW4tc3VwcGx5ID0gPCZ2
Y2M1djBfc3lzPjsKPj4gLSAgICAgICAgICAgICAgIHB3bXMgPSA8JnB3bTEgMCA1MDAwMCAwPjsK
Pj4gICAgICAgICAgICAgICAgICAjY29vbGluZy1jZWxscyA9IDwyPjsKPj4gKyAgICAgICAgICAg
ICAgIGNvb2xpbmctbGV2ZWxzID0gPDAgNjQgMTI4IDE5MiAyNTU+Owo+IAo+IENvdWxkIHlvdSBw
bGVhc2Ugc2hhcmUgeW91ciB0ZXN0aW5nIHNldHVwIGZvciB0aGlzIHBhcnQ/IEluIG15Cj4gZXhw
ZXJpZW5jZSB1c2luZyBSYWR4YSA0MDEwIGZhbiwgaXQgZGlkbid0IHNwaW4gdXAgcmVsaWFibHkg
YmVsb3cgMTIwLAo+IHNvIHRoZSB2YWx1ZSBvZiA2NCBsb29rcyBub3QgaGVscGZ1bCBoZXJlLgoK
SSdtIHNvcnJ5LCBJIGhhdmUgb25seSAyNTEzLCBpdCBkb2Vzbid0IHdvcmsgb24gNUIgd2l0aC93
aXRob3V0IHRoaXMgCnBhdGNoLiBzbyBJIGNvdWxkbid0IHRlc3QgdGhpcyBwYXJ0LiAoYnR3IEkn
bGwgZ2V0IDQwMTIgc29vbikKCnRoZW4sIHRoYW5rIHlvdSBmb3IgeW91ciB0ZXN0IHJlcG9ydCwg
SSdsbCBrZWVwIG9sZCB2YWx1ZS4KCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFva2kKUmFk
eGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KCj4gQmVzdCByZWdhcmRzLAo+IEFsZXhl
eQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
