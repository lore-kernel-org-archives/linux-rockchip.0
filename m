Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8C81CD98CF
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 13:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V/jnRnkLIEFDYs7sK5ABYwhbpvPR2/wjWMZSA2VQpYE=; b=Ug+wYlifOTKRjdNSsh4zmFRB8b
	kMarvokW2HYfozRNJrlgyQp5XU3/lLf/5qDlJ1JuP2YvTsCvIliUPF2V8LPX6mE+sdYRFRAm/MpjI
	Yiv/nLdkctC2QJN8QLZ4N2unvLCJLd2JrD7aidYO7/mogH6WQGMWn0HL+ULVKMz4hDqT3P7zt5WqE
	X8FQUtw6iUfL+DfaoK0iZMIa6ARy3kSLVkVN/hnKZF9uq3WdO8qjJzj08aX1sLFip64IgUkDnkpDf
	M6hJG2580xzH0IbOhcKI/UWz6t0+/cKK+mcUv3dWYM7X0GjiQdYAjEeZGjgzPfkBQnZ5qX9T7fBfS
	jGwINBaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ7QJ-0000000EJB8-2R5j;
	Mon, 15 Jun 2026 13:32:19 +0000
Received: from mail-m82248.xmail.ntesmail.com ([156.224.82.248])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ7QF-0000000EJ9u-1SEQ;
	Mon, 15 Jun 2026 13:32:17 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4271bc926;
	Mon, 15 Jun 2026 21:32:08 +0800 (GMT+08:00)
Message-ID: <a007b499-fbb8-4fcd-b1f2-c1ab3d6a25cb@rock-chips.com>
Date: Mon, 15 Jun 2026 21:32:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 0/3] Add eDP support for RK3576
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
References: <20260605022305.3058853-1-damon.ding@rock-chips.com>
 <cd1f968a-2e1b-434f-a331-a60cd8740032@rock-chips.com>
 <3213683.CbtlEUcBR6@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <3213683.CbtlEUcBR6@diego>
X-HM-Tid: 0a9ecb7b7f2103a8kunm47dcead08c7d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGhgaVkkfTENMHx8ZTUIZGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQkxVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=kQLJJ9H+1CSZ65yj536jGKbv3YtDkqEYwaL8cLFzBsKAVvf5EgoKPQYIDwsH0Vluy6JvkCJCyy7vFNAbev/CCPktgYlpwkgMnRPkcB0axcRz+k/2cMGrdAq8AHfVO8QwvozLgKwDgb0CZah389/3CPr5uM2Jz8CfVXX4AwRg2Qw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=IEDSeKt6aBa3YjGZKrTBnH10OnTxt5lTag0LZBn0RGM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_063215_955273_CCDCA164 
X-CRM114-Status: GOOD (  14.12  )
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
Cc: detlev.casanova@collabora.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, alchark@gmail.com, michael.riesch@collabora.com, andy.yan@rock-chips.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gNi8xNS8yMDI2IDk6MDEgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpIERhbW9uLAo+
IAo+IEFtIE1vbnRhZywgMTUuIEp1bmkgMjAyNiwgMTQ6MzM6MDMgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBEYW1vbiBEaW5nOgo+PiBHZW50bGUgcGluZyBvbiB0aGlzIHBh
dGNoIHNlcmllcy4KPiAKPiBMaW51eCA3LjEgd2FzIHJlbGVhc2VkIHllc3RlcmRheSwgc28gd2Un
cmUgaW4gdGhlIG1lcmdlLXdpbmRvdyBub3cuCj4gKEFuZCB0aGUgNXRoIG9mIGp1bmUgd2FzIHNo
b3J0bHkgYmVmb3JlIC1yYzcsIHNvIHRvbyBsYXRlIGZvciA3LjIpCj4gCj4gU28gSSdsbCBwaWNr
IHRob3NlIHVwIGFmdGVyIHRoZSBtZXJnZSB3aW5kb3cgZW5kIGluIDIgd2Vla3MuCj4gCj4gCgpU
aGFua3MgZm9yIHRoZSBoZWFkcy11cC4gR290IGl0LiA7LSkKCkJlc3QgcmVnYXJkcywKRGFtb24K
Cj4+Cj4+IE9uIDYvNS8yMDI2IDEwOjIzIEFNLCBEYW1vbiBEaW5nIHdyb3RlOgo+Pj4gUGlja2Vk
IGZyb206Cj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA2MDEwNjUxMDAuMTEw
Mzg3My0xLWRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20vCj4+Pgo+Pj4gUGF0Y2ggMS0yIGFyZSB0
byBhZGQgbWlzc2luZyBjbG9jayAiaGNsayIgZm9yIFJLMzU4OCBlRFAgbm9kZXMuCj4+PiBQYXRj
aCAzIGlzIHRvIGFkZCB0aGUgUkszNTc2IGVEUCBub2RlLgo+Pj4KPj4+IERhbW9uIERpbmcgKDMp
Ogo+Pj4gICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgbWlzc2luZyBoY2xrIGZvciBSSzM1
ODggZURQMAo+Pj4gICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgbWlzc2luZyBoY2xrIGZv
ciBSSzM1ODggZURQMQo+Pj4gICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZURQIG5vZGUg
Zm9yIFJLMzU3Ngo+Pj4KPj4+ICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2
LmR0c2kgICAgICB8IDI4ICsrKysrKysrKysrKysrKysrKysKPj4+ICAgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSB8ICA0ICstLQo+Pj4gICAgLi4uL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1leHRyYS5kdHNpIHwgIDQgKy0tCj4+PiAgICAzIGZp
bGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gLS0t
Cj4+Pgo+Pj4gQ2hhbmdlcyBpbiB2MjoKPj4+IC0gU3BsaXQgb3V0IHNlcGFyYXRlIHBhdGNoZXMg
dG8gYWRkIHRoZSAiaGNsayIgY2xvY2sgcmVmZXJlbmNlLgo+Pj4gLSBTcGxpdCBvdXQgc2VwYXJh
dGUgcGF0Y2hlcyB0byBlbmFibGUgdGhlICJoY2xrIiBjbG9jay4KPj4+IC0gQWRkIFJldmlld2Vk
LWJ5IHRhZy4KPj4+Cj4+PiBDaGFuZ2VzIGluIHYzOgo+Pj4gLSBBZGQgYSBwYXRjaCB0byBleHBh
bmQgZGVzY3JpcHRpb25zIGZvciBjbG9ja3Mgb2YgdGhlIGVEUCBub2RlLgo+Pj4gLSBBZGQgUmV2
aWV3ZWQtYnkgdGFnLgo+Pj4KPj4+IENoYW5nZXMgaW4gdjQ6Cj4+PiAtIE1vZGlmeSBjb21taXQg
bXNnLgo+Pj4KPj4+IENoYW5nZXMgaW4gdjU6Cj4+PiAtIEVuZm9yY2UgdGhlIGNvcnJlY3QgdGhp
cmQgY2xvY2sgbmFtZSBvbiBhIHBlci1jb21wYXRpYmxlIGJhc2lzLgo+Pj4gLSBNb2RpZnkgdGhl
IGNvbW1pdCBtc2cgc2ltdWx0YW5lb3VzbHkuCj4+PiAtIEFkZCBBY2tlZC1ieSB0YWcuCj4+Pgo+
Pj4gQ2hhbmdlcyBpbiB2NjoKPj4+IC0gRXhwYW5kIG1vcmUgZGV0YWlsIGNvbW1pdCBtc2cgYWJv
dXQgdXNpbmcgaGNsayBpbnN0ZWFkIG9mIGdyZiBjbG9jay4KPj4+Cj4+PiBDaGFuZ2VzIGluIHY3
Ogo+Pj4gLSBMaXN0IGFsbCB2YWxpZCBjbG9jayBuYW1lcyBhdCB0aGUgdG9wIGxldmVsLCBhbmQg
Y29uc3RyYWluIHRoZSBjbG9jawo+Pj4gICAgIGNvdW50IGZvciBlYWNoIHBsYXRmb3JtIHdpdGgg
bWluSXRlbXMvbWF4SXRlbXMgaW4gYWxsT2YuCj4+Pgo+Pj4gQ2hhbmdlcyBpbiB2ODoKPj4+IC0g
Rml4IGluZGVudGF0aW9uIHRvIDEwIGZvciBlbnVtIGluIGNsb2NrLW5hbWVzIHByb3BlcnR5Lgo+
Pj4KPj4+IENoYW5nZXMgaW4gdjk6Cj4+PiAtIFJlc3RvcmUgdGhlIGV4cGxpY2l0IGNsb2NrLW5h
bWVzIGZvciBSSzMzOTkgYW5kIFJLMzU4OCBlRFAgZHQtYmluZGluZ3MuCj4+Pgo+Pj4gQ2hhbmdl
cyBpbiB2MTA6Cj4+PiAtIFVzZSBhdXRvbWF0aWMgY2xlYW51cCB0byBmaXggT0Ygbm9kZSByZWZl
cmVuY2UgbGVhayByZXBvcnRlZCBieQo+Pj4gICAgIFNhc2hpa28uCj4+Pgo+Pj4gQ2hhbmdlcyBp
biB2MTE6Cj4+PiAtIFBpY2sgYW5kIHJlYmFzZSBEVCByZWxhdGVkIHBhdGNoZXMuCj4+Pgo+Pgo+
Pgo+IAo+IAo+IAo+IAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
