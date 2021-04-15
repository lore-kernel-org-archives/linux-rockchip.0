Return-Path: <SRS0=wwH4=JM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F346C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Apr 2021 07:25:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 762D8611CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Apr 2021 07:25:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 762D8611CD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wp7HpHJCk+B9x9vJLFLpeneZFYhCDejB5UJXLQ8IPbE=; b=evjGQomBITdpk7RnaK6HaG9ic
	/8WtuJl0z1Be9TlzYy5Kq2u7ZZrLfGcUWlpbqUxYHdbJxx8zztzEH9wkGKToQEXSWQNIGt1Bn+Kv/
	hCmmozH5VBu/4LFVsrvBM7l8cHkP94HJj5sL13hQm3CBZUtIgU54PcOodariD0vssRcTGIpIGAwZE
	3KG+NVsEsfqwK9eyeivlHhswzL97t4L3dj7RL5raKfoL+jgnrueouon4TH+WzV4IysHWyLVf1JJkY
	r4UVHgdMnoh9cuAXR7cxJecvRA5Tp1p0GfbqRvCe8gU2eP9EJtdshcL4RGQ5Ge6fK6EY7fhCGeHtO
	m6u1RgTNw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwMy-00FCcY-HE; Thu, 15 Apr 2021 07:24:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwMt-00FCbp-Tg
 for linux-rockchip@desiato.infradead.org; Thu, 15 Apr 2021 07:24:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=77bjFlk9w9zFuwmFNs6PgpahtwrQCpInLOUuo+knjgw=; b=c9vk6+0jpkQMyLMl5wMo6ZwMsP
 EDoTE4CCd7P0Zq9WZt2ncDYMXs7jqVby5dQMTczI78A4V7sDc1gEYnUItuZ2S89l5yjHe4WHIDDFp
 P78qeIcXqmY79bKwnocPVQdX85J2R1Dc72e6fXEwHI0GB/DPuLHqKtXKbKwdT7w8B16AOcxc6vVM2
 iM6yY6b0fFgShOGrd6UW/+1UJFbvEOQkkmoJjmrfSCVmFqRD2RIuGG+cDNF2LlOT26+TnaV2ZPNIN
 0kiTy1GiH8fyWF+OCV1gQuhZfsbrEDzVm8HBuqPyiDqC9mStUnWkHJfe4DD4Uc06ZbGVyyRPy2Nt0
 r3O/BNDA==;
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWwMo-008L2y-H0
 for linux-rockchip@lists.infradead.org; Thu, 15 Apr 2021 07:24:48 +0000
Received: from localhost (unknown [192.168.167.223])
 by regular1.263xmail.com (Postfix) with ESMTP id 741F1705;
 Thu, 15 Apr 2021 15:24:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10011T140596022867712S1618471472993643_; 
 Thu, 15 Apr 2021 15:24:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b802ba564036979c4ab26e08981c3180>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [RFC] ITS fails to allocate on rk3568/rk3566
To: Marc Zyngier <maz@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <CAMdYzYrQ5f-mv_VmTq_CRf9tR=j3mwRpKHNLmPFgCF9whsGFRw@mail.gmail.com>
 <871rbeo7wf.wl-maz@kernel.org>
 <CAMdYzYruPyiT89FrbJhuV=c36PyRwZ7sT45abnv8rTv85AKRow@mail.gmail.com>
 <87y2dmmggt.wl-maz@kernel.org>
 <CAMdYzYrNa_wJa9mvBkhDrvdNaDugR9Y=LEnbcVHxjxJS0UFcMg@mail.gmail.com>
 <87tuoambdb.wl-maz@kernel.org>
 <CAMdYzYo2+h+=39cw1t=11HUih-O+NUs4hhNaPbrU6si-AbqNiA@mail.gmail.com>
 <871rbdt4tu.wl-maz@kernel.org>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <678e9950-dd85-abb2-a104-07a4db1fad49@rock-chips.com>
Date: Thu, 15 Apr 2021 15:24:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <871rbdt4tu.wl-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_002446_974098_7E23F112 
X-CRM114-Status: GOOD (  27.19  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgTWFyYywgUGV0ZXIsCgogwqDCoMKgIFJLMzU2eCBHSUMgaGFzIHR3byBpc3N1ZXM6CgoxLiBH
SUMgb25seSBzdXBwb3J0IDMyYml0IGFkZHJlc3Mgd2hpbGUgcmszNTZ4IHN1cHBvcnRzIDhHQiBE
RFIgU0RSQU0sIApzbyB3ZSB1c2UgWk9ORV9ETUEzMiB0byBmaXggdGhpcyBpc3N1ZTsKCjIuIEdJ
QyB2ZXJzaW9uIGlzIHIxcDYtMDByZWwwLCBSSzM1NnggaW50ZXJjb25uZWN0IGRvZXMgbm90IHN1
cHBvcnQgR0lDIAphbmQgQ1BVIHNub29wIHRvIGVhY2ggb3RoZXIsIGhlbmNlIHRoZSBHSUMgZG9l
cyBub3Qgc3VwcG9ydCB0aGUgCnNoYXJlYWJpbGl0eSBmZWF0dXJlLsKgIFRoZSByZWFkIG9mIHJl
Z2lzdGVyIHZhbHVlIGZvciBzaGFyZWFiaWxpdHnCoCAKZmVhdHVyZSBkb2VzIG5vdCByZXR1cm4g
YXMgZXhwZWN0IGluIEdJQ1IgYW5kIEdJVFMsIHNvIHdlIGhhdmUgdG8gCndvcmthcm91bmQgZm9y
IGl0LgoKVGhhbmtzLAotIEtldmVyCk9uIDIwMjEvNC8xNCDkuIvljYg4OjQyLCBNYXJjIFp5bmdp
ZXIgd3JvdGU6Cj4gT24gV2VkLCAxNCBBcHIgMjAyMSAxMjo0MToyMCArMDEwMCwKPiBQZXRlciBH
ZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPiB3cm90ZToKPj4gT24gVHVlLCBBcHIgMTMsIDIwMjEg
YXQgMTE6NTEgQU0gTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4gd3JvdGU6Cj4+PiBPbiBU
dWUsIDEzIEFwciAyMDIxIDE2OjAzOjUxICswMTAwLAo+Pj4gUGV0ZXIgR2VpcyA8cGd3aXBlb3V0
QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pj4gT24gVHVlLCBBcHIgMTMsIDIwMjEgYXQgMTA6MDEgQU0g
TWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4gd3JvdGU6Cj4+PiBbLi4uXQo+Pj4KPj4+Pj4g
V2hhdCBoYXBwZW5zIGlmIHlvdSBoYWNrIGFsbCB0aGUgYWxsb2NhdGlvbnMgdG8gaGFwcGVuIGlu
IHRoZSBsb3cgNEdCCj4+Pj4+IG9mIHRoZSBQQSBzcGFjZT8KPj4+PiBJdCBzZWVtcyB0byB3b3Jr
IGNvcnJlY3RseS4KPj4+PiBUaGUgZG93bnN0cmVhbSBoYWNrcyB1c2VkIEdGUF9ETUEzMiB3aGlj
aCBnZXRzIGRpc2NhcmRlZCBieQo+Pj4+IGttYWxsb2NfZml4X2ZsYWdzIG9uIGNlcnRhaW4gYWxs
b2NhdGlvbnMuCj4+Pj4gU3dpdGNoaW5nIHRvIEdGUF9ETUEgc2VlbXMgdG8gaGF2ZSBzYXRpc2Zp
ZWQgaXQsIGJ1dCBpdCBmZWVscyB3cm9uZwo+Pj4+IHVzaW5nIHRoaXMgY29kZS4KPj4+PiBOZWVk
IHRvIGNoZWNrIHRoZSBjb3JuZXIgY2FzZXMgdG8gbWFrZSBzdXJlIEknbSBub3QgbWlzc2luZyBz
b21ldGhpbmcuCj4+PiBUaGUgcHJvYmxlbSBpcyB0aGF0IEdGUF9ETUEgZG9lc24ndCBhbHdheXMg
bWVhbiB0aGUgc2FtZSB0aGluZy4KPj4+IE92ZXJhbGwsIHdlIG5lZWQgdG8gaGVhciBmcm9tIFJv
Y2tjaGlwIGFib3V0IHRoZSBleGFjdCBuYXR1cmUgb2YgdGhlCj4+PiBwcm9ibGVtLCBhbmQgdGhl
biB3ZSAqbWF5KiBiZSBhYmxlIHRvIHdvcmsgc29tZXRoaW5nIG91dC4KPj4gIEZyb20gd2hhdCBJ
J3ZlIHJlYWQsIEdGUF9ETUEgYWxsb2NhdGVzIGFzIGxvdyBhcyBwb3NzaWJsZSwgd2hpbGUKPj4g
R0ZQX0RNQTMyIGVuc3VyZXMgaXQncyBpbiB0aGUgMzIgYml0IGFkZHJlc3MgcmFuZ2UsIGFtIEkg
dW5kZXJzdGFuZGluZwo+PiB0aGlzIGNvcnJlY3RseT8KPiBaT05FX0RNQXssMzJ9IGFyZW4ndCBu
ZWNlc3NhcmlseSBzZWxlY3RlZCwgYW5kIGNhbiB2YXJ5IGluIHNpemUgKHNvbWUKPiBlcXVhbGx5
IGJyb2tlbiBzeXN0ZW1zIGNhbiBvbmx5IERNQSBvdmVyIDMwYml0cy4uLikuCj4KPj4gSXMgdGhl
cmUgYSByZWFzb24gR0ZQX0RNQSBpcyBwZXJtaXR0ZWQgd2hpbGUgR0ZQX0RNQTMyIGlzIG5vdCwg
YXNpZGUKPj4gZnJvbSBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eT8gIChJIHNhdyB0aGUgbm90ZXMg
YWJvdXQgaG93IHdlIGFyZW4ndAo+PiByZWFsbHkgc3VwcG9zZWQgdG8gcmVseSBvbiB0aGVzZSBm
bGFncykKPiBUaGV5IGFyZSBjb21wbGV0ZWx5IGluZGVwZW5kZW50LCBhbmQgdGhleSBjYW4gZWl0
aGVyIGJlIHNlbGVjdGVkIG9yCj4gbm90LiBBbmQgcGxlbnR5IG9mIHN5c3RlbXMgZG8gbm90IGhh
dmUgYW55IG1lbW9yeSBpbiB0aGUgbG93Cj4gNEdCLiBGV0lXLCBvbmUgb2YgbXkgbWFpbiBtYWNo
aW5lcyBoYXMgaXRzIGZpcnN0IGJ5dGUgb2YgUkFNIGF0IDFUQi4KPgo+IFdoaWNoIG1lYW5zIHRo
YXQgc3VwcG9ydGluZyB0aGlzIHN5c3RlbSBpcyBnb2luZyB0byByZXF1aXJlIHNvbWUgdmVyeQo+
IHNwZWNpZmljIGhhbmRsaW5nLgo+Cj4+IEkndmUgYWxzbyBjb25maXJtZWQgdGhhdCB0aGVpciBk
aXNhYmxpbmcgc2hhcmVhYmlsaXR5IGFuZCBjYWNoaW5nIGlzCj4+IG5lY2Vzc2FyeS4KPiBDb25m
aXJtZWQgaG93PyBGb3Igd2hpY2ggdGFibGVzPyBXZSByZWFsbHkgY2Fubm90IGd1ZXNzIHRoaXMg
a2luZCBvZgo+IHRoaW5nLgo+Cj4+PiBJJ2QgYWxzbyBsaWtlIHRvIHVuZGVyc3RhbmQgd2hldGhl
ciBpdCBpcyBicm9rZW4gYmVjYXVzZSB5b3UgaGFwcGVuIHRvCj4+PiBoYXZlIHByZS1yZWxlYXNl
IHNpbGljb24gdGhhdCB3aWxsIG5ldmVyIG1ha2UgaXQgaW50byB0aGUgd2lsZCwgb3IgaWYKPj4+
IHRoaXMgaXMgdGhlIHJlYWwgdGhpbmcgdGhhdCBpcyBnb2luZyB0byBzaGlwIG9uIG1pbGxpb25z
IG9mIGRldmljZXMuCj4+IE15IHVuZGVyc3RhbmRpbmcgaXMgdGhlc2UgY2hpcHMgYXJlIHNhbXBs
ZXMgcHJpb3IgdG8gdGhlIGZ1bGwKPj4gcHJvZHVjdGlvbiBydW4sIGJ1dCB3ZSBhcmUgd2FpdGlu
ZyBvbiBvZmZpY2lhbCBjb21tZW50IGZyb20gUm9ja2NoaXAKPj4gYWJvdXQgdGhpcyBwYXJ0aWN1
bGFyIGVycmF0YS4KPiBPSy4gUGxlYXNlIGxldCBtZSBrbm93IG9uY2UgeW91IGdldCBhIGZ1bGwg
ZGVzY3JpcHRpb24gb2YgdGhlIHByb2JsZW0KPiBmcm9tIFJvY2tjaGlwLiBXZSB3aWxsIGFsc28g
bmVlZCBhbiBvZmZpY2lhbCBlcnJhdHVtIG51bWJlciBmb3IgdGhpcwo+IGlmIHRoaXMgaXMgdG8g
YmUgd29ya2VkIGFyb3VuZCBpbiBtYWlubGluZS4KPgo+IAlNLgo+CgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
