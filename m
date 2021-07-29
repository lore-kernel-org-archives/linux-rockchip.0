Return-Path: <SRS0=cphG=MV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A1B8C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 16:58:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 259E160560
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 16:58:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 259E160560
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZgXBY1tLEKAQDY0lGJaB7b/gQgzY+OOTTmnFfnN3+QA=; b=S7FyUtjhEXHQUwgPW8Wn2DmmZ4
	D7jl1B1lYEwok8KJEucjHaYbkd8bms4T1EoJB9LWAYpFemLtIjgl9TjHAtqrHcYn/YS6MTCH59Boe
	w4xbClWlcIB6cYGLtD7PZYoyjC/7nI6D5NP9I6ub6bk5Ecb/Am5bh4TNU0nGVOXW4cAURVQ1KRpIC
	jfBPFRPcXxKF7B5OqCYbiJ8YCLuWyNWX5So+wwPgEs1ccDcXP7LMuB9ydldFrsOESBaNzu3RTzwAr
	Dh+mEnVAcPKZzinsUfHVdwiFfIt3Kg15O5OXhh8S0AO1B3e90N/lnRVu2xOOwo7wfRCVg3ZxLTt0x
	KscUF9ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m99Mk-005BMM-7U; Thu, 29 Jul 2021 16:58:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m99MJ-005BFJ-Go; Thu, 29 Jul 2021 16:58:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A298F1FB;
 Thu, 29 Jul 2021 09:58:10 -0700 (PDT)
Received: from [10.57.36.146] (unknown [10.57.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9AF463F73D;
 Thu, 29 Jul 2021 09:58:08 -0700 (PDT)
Subject: Re: [PATCH v7 3/4] iommu: rockchip: Add internal ops to handle
 variants
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
 will@kernel.org, robh+dt@kernel.org, xxm@rock-chips.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
References: <20210525121551.606240-1-benjamin.gaignard@collabora.com>
 <20210525121551.606240-4-benjamin.gaignard@collabora.com>
 <c6175f3d-a324-9fb5-bd39-cfe0447ee5e7@collabora.com>
 <3544194.oiGErgHkdL@diego>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <06cdd178-66af-9ff7-5100-3da4e901040f@arm.com>
Date: Thu, 29 Jul 2021 17:58:03 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <3544194.oiGErgHkdL@diego>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_095811_665920_997DC7AE 
X-CRM114-Status: GOOD (  22.02  )
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

T24gMjAyMS0wNy0yOSAxNzowOCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgRGFmbmEsCj4g
Cj4gQW0gRG9ubmVyc3RhZywgMjkuIEp1bGkgMjAyMSwgMTc6NTk6MjYgQ0VTVCBzY2hyaWViIERh
Zm5hIEhpcnNjaGZlbGQ6Cj4+IE9uIDI1LjA1LjIxIDE0OjE1LCBCZW5qYW1pbiBHYWlnbmFyZCB3
cm90ZToKPj4+IEBAIC04NzksNyArODk1LDcgQEAgc3RhdGljIGludCBya19pb21tdV9lbmFibGUo
c3RydWN0IHJrX2lvbW11ICppb21tdSkKPj4+ICAgIAo+Pj4gICAgCWZvciAoaSA9IDA7IGkgPCBp
b21tdS0+bnVtX21tdTsgaSsrKSB7Cj4+PiAgICAJCXJrX2lvbW11X3dyaXRlKGlvbW11LT5iYXNl
c1tpXSwgUktfTU1VX0RURV9BRERSLAo+Pj4gLQkJCSAgICAgICBya19kb21haW4tPmR0X2RtYSk7
Cj4+PiArCQkJICAgICAgIHJrX29wcy0+ZG1hX2FkZHJfZHRlKHJrX2RvbWFpbi0+ZHRfZG1hKSk7
Cj4+Cj4+IEhpLAo+PiBUaGlzIGlzIG5vdCByZWxhdGVkIHRvIHRoYXQgcGF0Y2gsIEkgd2FzIHdv
bmRyaW5nIHdoeSBhcmUgYWxsIG1tdSBkZXZpY2VzIGluaXRpYWxpemVkCj4+IHdpdGggdGhlIHNh
bWUgZHRfZG1hPwo+PiBJIHNlZSBmb3IgZXhhbXBsZSB0aGF0IHRoZSBpc3AwX21tdSBpbiByazMz
OTkuZHRzaSBoYXMgdHdvIHJlc291cmNlcy4gQ2FuJ3QgZWFjaCByZXNvdXJjZQo+PiBiZSBpbml0
aWFsaXplZCB3aXRoIGRpZmZlcmVudCBkdF9kbWEgYW5kIHRoaXMgd2F5IHRoZXJlIGFyZSB0d28g
ZHQgdGFibGVzIGluc3RlYWQgb2YgdGhlIHR3byBtbXVzIHBvaW50aW5nCj4+IHRvIHRoZSBzYW1l
IGR0IHRhYmxlLgo+IAo+IG1heWJlCj4gZ2l0IGxvZyAtMSBjZDY0MzhjNWY4NDQ2NjkxYWZhNDgy
OWZlMWE5ZDdiNjU2MjA0ZjExCj4gCj4gImlvbW11L3JvY2tjaGlwOiBSZWNvbnN0cnVjdCB0byBz
dXBwb3J0IG11bHRpIHNsYXZlcwo+ICAgICAgCj4gVGhlcmUgYXJlIHNvbWUgSVBzLCBzdWNoIGFz
IHZpZGVvIGVuY29kZXIvZGVjb2RlciwgY29udGFpbnMgMiBzbGF2ZSBpb21tdXMsCj4gb25lIGZv
ciByZWFkaW5nIGFuZCB0aGUgb3RoZXIgZm9yIHdyaXRpbmcuIFRoZXkgc2hhcmUgdGhlIHNhbWUg
aXJxIGFuZAo+IGNsb2NrIHdpdGggbWFzdGVyLgo+ICAgICAgCj4gVGhpcyBwYXRjaCByZWNvbnN0
cnVjdHMgdG8gc3VwcG9ydCB0aGlzIGNhc2UgYnkgbWFraW5nIHRoZW0gc2hhcmUgdGhlIHNhbWUK
PiBQYWdlIERpcmVjdG9yeSwgUGFnZSBUYWJsZXMgYW5kIGV2ZW4gdGhlIHJlZ2lzdGVyIG9wZXJh
dGlvbnMuCj4gVGhhdCBtZWFucyBldmVyeSBpbnN0cnVjdGlvbiB0byB0aGUgcmVhZGluZyBNTVUg
cmVnaXN0ZXJzIHdvdWxkIGJlCj4gZHVwbGljYXRlZCB0byB0aGUgd3JpdGluZyBNTVUgYW5kIHZp
Y2UgdmVyc2EuIgoKUmlnaHQuIEluIHRoZW9yeSB3ZSAqY291bGQqIG1haW50YWluIGEgc2VwYXJh
dGUgcGFnZXRhYmxlIGZvciBlYWNoIElPTU1VIAppbnN0YW5jZSwgYnV0IGl0IHdvdWxkIGp1c3Qg
bGVhZCB0byBhIGxvYWQgb2YgY29tcGxleGl0eSBhbmQgb3ZlcmhlYWQuIApGb3IgYSBtYXAgcmVx
dWVzdCwgd2UnZCBoYXZlIHRvIGRvIGV4dHJhIHdvcmsgdG8gZGVjaWRlIHdoaWNoIHRhYmxlKHMp
IApuZWVkIG1vZGlmeWluZywgYW5kIGR1cGxpY2F0ZSBhbGwgdGhlIHdvcmsgb2YgdGhlIGFjdHVh
bCBtYXBwaW5nIGlmIGl0J3MgCm1vcmUgdGhhbiBvbmUuIEZvciBhbiB1bm1hcCByZXF1ZXN0LCB3
ZSdkIGhhdmUgbm8gY2hvaWNlIGJ1dCB0byB3YWxrIAoqYWxsKiB0aGUgdGFibGVzIGJhY2tpbmcg
dGhhdCBkb21haW4gdG8gZmlndXJlIG91dCB3aGljaCAoaWYgYW55KSAKYWN0dWFsbHkgaGFkIGl0
IG1hcHBlZCBpbiB0aGUgZmlyc3QgcGxhY2UuCgpHaXZlbiB0aGF0IHdlIGFscmVhZHkgaGF2ZSBk
aXN0aW5jdCByZWFkIGFuZCB3cml0ZSBwZXJtaXNzaW9ucyBmb3IgCm1hcHBpbmdzIHdpdGhpbiBh
IHNpbmdsZSB0YWJsZSwgdGhlcmUncyBub3QgZXZlbiBhbnkgZnVuY3Rpb25hbCBiZW5lZml0IAp0
aGF0IGNvdWxkIGJlIGdhaW5lZCBpbiB0aGlzIGNhc2UgKGFuZCBpbiB0aGUgbW9yZSBnZW5lcmFs
IGNhc2Ugd2hlcmUgCnRoZSBkZXZpY2UgbWlnaHQgZW1pdCBhbGwga2luZHMgb2YgdHJhbnNhY3Rp
b25zIGZyb20gYWxsIGl0cyBpbnRlcmZhY2VzIAp5b3UnZCBoYXZlIHRvIG1haW50YWluIGlkZW50
aWNhbCBtYXBwaW5ncyBmb3IgYWxsIGl0cyBJT01NVXMgYW55d2F5KS4gClNhdmluZyBtZW1vcnkg
YW5kIGNvZGUgY29tcGxleGl0eSBieSBwaHlzaWNhbGx5IHNoYXJpbmcgb25lIHBhZ2V0YWJsZSAK
YW5kIG5vdCB3b3JyeWluZyBhYm91dCB0cnlpbmcgdG8gZG8gc2VsZWN0aXZlIFRMQiBtYWludGVu
YW5jZSBpcyBhIApiaWdnZXIgd2luIHRoYW4gYW55dGhpbmcgZWxzZSBjb3VsZCBiZS4KClJvYmlu
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
