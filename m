Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F620C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 15:24:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B188611AF
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 15:24:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B188611AF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Subject:Cc:To:
	From:Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JMw/ItaiPkTS+R4BFFa4Fm5ClvaPg3zD2mSvDwzimZQ=; b=EwqCeZq+zTia0tmd64PUc9cOW
	2ri2zWgVx7QC06UEJO+w8cmtedUvnYYNGIZjudstGTV3J02W0+DfplVHFsKDAqgkiRAuaYtnty5FN
	XC/TJTFwZXFvqWVV+vpJhIQLA2j1f1du8h+qCk4jHvNQ48gTIdHn/xFB5mpZ9PGhjZ/7IrNPYderI
	nswW6Tl4pQXfmOSGMjxLu6UmI56aM+GlRTbDYNTeAS3Z/MCd2mJE74Gyyjaljv8w/oYPObJTeCq77
	dqHZ7Z/yJrJnZsUbY+0FYSXufWfZ0g3zK8JvUAn21JIcXFKMrU2sUXra347+l0X/HFCK1tDjvwBcJ
	LKCkDANkQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXQK1-002bob-Cj; Fri, 16 Apr 2021 15:23:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXQJp-002blf-81
 for linux-rockchip@desiato.infradead.org; Fri, 16 Apr 2021 15:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Subject:Cc:To:From:
 Message-ID:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=jI66nZNGqNGvJ3GJ6jg7Nj+r8xqFHmMu4sviT97Ue54=; b=WMH4Z5S7JwGDiEK6/NSNDKQEgi
 /pNrdWcNGlMJKrAInvekgoN+rt6dDwjJojvrOufzbst51+3V7S7eDxFENTxk4Vg02JMc2BNJlb6OF
 rnqgHEPzo9btLJyRc2Q9onT4fljv5po0fzfWMzxeDfpSUSDd39d6ZQ95Xn6rye2Rh0dShGR0ilQBk
 DAjfrXGzlVOxA0Ucsc+AMfwvUQ6OjLbk6bqPATcArLKXHcoWA4vaReYwLtznp/Sad28ug+3krH2Et
 UfArHHl+DCo+TxTGYsRDq+nnkWMV/nEu9nPhuyju4Fd2WZGItwYq8YB/+X0yjbQsuUxi8eskFtDDu
 iYtwmyeg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXQJm-009VA3-HA
 for linux-rockchip@lists.infradead.org; Fri, 16 Apr 2021 15:23:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 316EC6108E;
 Fri, 16 Apr 2021 15:23:38 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.misterjones.org)
 by disco-boy.misterjones.org with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94)
 (envelope-from <maz@kernel.org>)
 id 1lXQJk-007sx7-2k; Fri, 16 Apr 2021 16:23:36 +0100
Date: Fri, 16 Apr 2021 16:23:35 +0100
Message-ID: <878s5i2qyw.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Peter Geis <pgwipeout@gmail.com>,	Thomas Gleixner <tglx@linutronix.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,	Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>,	Heiko =?UTF-8?B?U3Q=?=
 =?UTF-8?B?w7xibmVy?= <heiko@sntech.de>
Subject: Re: [RFC] ITS fails to allocate on rk3568/rk3566
In-Reply-To: <8d2e22f5-1c1b-e795-8757-ae078446d961@rock-chips.com>
References: <CAMdYzYrQ5f-mv_VmTq_CRf9tR=j3mwRpKHNLmPFgCF9whsGFRw@mail.gmail.com>
 <871rbeo7wf.wl-maz@kernel.org>
 <CAMdYzYruPyiT89FrbJhuV=c36PyRwZ7sT45abnv8rTv85AKRow@mail.gmail.com>
 <87y2dmmggt.wl-maz@kernel.org>
 <CAMdYzYrNa_wJa9mvBkhDrvdNaDugR9Y=LEnbcVHxjxJS0UFcMg@mail.gmail.com>
 <87tuoambdb.wl-maz@kernel.org>
 <CAMdYzYo2+h+=39cw1t=11HUih-O+NUs4hhNaPbrU6si-AbqNiA@mail.gmail.com>
 <871rbdt4tu.wl-maz@kernel.org>
 <678e9950-dd85-abb2-a104-07a4db1fad49@rock-chips.com>
 <87k0p4m0gm.wl-maz@kernel.org>
 <8d2e22f5-1c1b-e795-8757-ae078446d961@rock-chips.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/27.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kever.yang@rock-chips.com, pgwipeout@gmail.com,
 tglx@linutronix.de, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_082338_636613_90BD2764 
X-CRM114-Status: GOOD (  43.51  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCAxNiBBcHIgMjAyMSAwMjoxMzozOCArMDEwMCwKS2V2ZXIgWWFuZyA8a2V2ZXIueWFu
Z0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4gCj4gSGkgTWFyYywKPiAKPiBPbiAyMDIxLzQvMTUg
5LiL5Y2INDoxMSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+ID4gSGkgS2V2ZXIsCj4gPiAKPiA+IE9u
IFRodSwgMTUgQXByIDIwMjEgMDg6MjQ6MzMgKzAxMDAsCj4gPiBLZXZlciBZYW5nIDxrZXZlci55
YW5nQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiA+PiBIaSBNYXJjLCBQZXRlciwKPiA+PiAKPiA+
PiAgwqDCoMKgIFJLMzU2eCBHSUMgaGFzIHR3byBpc3N1ZXM6Cj4gPj4gCj4gPj4gMS4gR0lDIG9u
bHkgc3VwcG9ydCAzMmJpdCBhZGRyZXNzIHdoaWxlIHJrMzU2eCBzdXBwb3J0cyA4R0IgRERSIFNE
UkFNLAo+ID4+IHNvIHdlIHVzZSBaT05FX0RNQTMyIHRvIGZpeCB0aGlzIGlzc3VlOwo+ID4gV2hh
dCB0cmFuc2FjdGlvbnMgZG9lcyB0aGlzIGFmZmVjdCBleGFjdGx5Pwo+IFRoZSBHSUMgb24gcmsz
NTZ4IGlzIGEgMzJiaXQgbWFzdGVyLCB3aGljaCBtZWFucyBhbGwgdGhlIHNwYWNlIGl0cwo+IGxv
Z2ljIG5lZWQgdG8gYWNjZXNzIHNob3VsZCBiZSBpbiB0aGUgNEdCIHJhbmdlLgoKV2VsbCwgYXQg
bGVhc3QgdGhpcyBpcyBjb25zaXN0ZW50bHkgYnJva2VuLgoKPiA+IE9ubHkgc29tZSBJVFMgdGFi
bGVzPyBPcgo+ID4gYWxsIG9mIHRoZW0sIGluY2x1ZGluZyB0aGUgY29tbWFuZCBxdWV1ZT8gV2hh
dCBhYm91dCB0aGUgY29uZmlndXJhdGlvbgo+ID4gYW5kIHBlbmRpbmcgdGFibGVzIGFzc29jaWF0
ZWQgd2l0aCB0aGUgcmVkaXN0cmlidXRvcnM/Cj4gPiAKPiA+PiAyLiBHSUMgdmVyc2lvbiBpcyBy
MXA2LTAwcmVsMCwgUkszNTZ4IGludGVyY29ubmVjdCBkb2VzIG5vdCBzdXBwb3J0Cj4gPj4gR0lD
IGFuZCBDUFUgc25vb3AgdG8gZWFjaCBvdGhlciwgaGVuY2UgdGhlIEdJQyBkb2VzIG5vdCBzdXBw
b3J0IHRoZQo+ID4+IHNoYXJlYWJpbGl0eSBmZWF0dXJlLsKgIFRoZSByZWFkIG9mIHJlZ2lzdGVy
IHZhbHVlIGZvciBzaGFyZWFiaWxpdHkKPiA+PiBmZWF0dXJlIGRvZXMgbm90IHJldHVybiBhcyBl
eHBlY3QgaW4gR0lDUiBhbmQgR0lUUywgc28gd2UgaGF2ZSB0bwo+ID4+IHdvcmthcm91bmQgZm9y
IGl0Lgo+ID4gSG93IGFib3V0IHRoZSBjYWNoZWFiaWxpdHkgYXR0cmlidXRlPyBDYW4geW91IHBs
ZWFzZSBwcm92aWRlIHRoZSBleGFjdAo+ID4gc2V0IG9mIGF0dHJpYnV0ZXMgdGhhdCB0aGlzIHN5
c3RlbSBhY3R1YWxseSBzdXBwb3J0cyBmb3IgZWFjaCBvZiB0aGUKPiA+IElUUyBhbmQgcmVkaXN0
cmlidXRvciBiYXNlIHJlZ2lzdGVycz8KPiAKPiBUaGUgc2hhcmVhYmlsaXR5IGF0dHJpYnV0ZXMg
aW4gR0lDUl9QRU5EQkFTRUVSLCBHSUNSX1BST1BCQVNFUiwKPiBHSVRTX0JBU0VSbiwgR0lUU19D
QkFTRVIgZGVmYXVsdCB2YWx1ZSBpcyAwYjAwLCB3aGVuIHdlIHNldCAwYjAxIHRoZW4KPiByZWFk
IHJldHVybnMgMGIwMS4KCkFuZCBJIGNsYWltIHRoYXQgdGhpcyBpcyBhIHBlcmZlY3RseSBicm9r
ZW4gYmVoYXZpb3VyLiBIb3cgZG8geW91CmV4cGVjdCBzb2Z0d2FyZSB0byBmaW5kIGFib3V0IHRo
ZSBnb3J5IGRldGFpbHMgb2YgdGhlIGludGVncmF0aW9uPwpUaGF0J3MgdGhlIG9ubHkgd2F5IGZv
ciBTVyB0byBmaW5kIG91dCB3aGF0IHRoZSBIVyBpcyBjYXBhYmxlIG9mLi4uCgo+IFNpbmNlIHRo
ZXJlIGlzIG5vIEFDRSBjb2hlcmVuY3kgaW50ZXJmYWNlIGZvciB0aGlzIEdJQyBjb250cm9sbGVy
LCBhbGwKPiB0aGUgY2FjaGVhYmlsaXR5IGluIHRoZSBHSUMgaXMgbm90IHN1cHBvcnQgaW4gaGFy
ZHdhcmUuCj4gCj4gPiAKPiA+IEFsc28sIHBsZWFzZSBwcm92aWRlIGVycmF0YSBudW1iZXJzIGZv
ciB0aGVzZSB0d28gaXNzdWVzIHNvIHRoYXQgd2UKPiA+IGNhbiBwcm9wZXJseSBkb2N1bWVudCB0
aGVtIGFuZCB0cmFjayB0aGUgd29ya2Fyb3VuZHMuCj4gCj4gV2hhdCBraW5kIG9mIGVycmF0YSBk
byB5b3UgbmVlZCwgY291bGQgeW91IHBsZWFzZSBzaGFyZSBhbnkga2luZCBvZgo+IGV4YW1wbGUg
Y2xvc2UgdG8gdGhpcyBjYXNlPwoKSSB3b3VsZCBsaWtlIHNvbWV0aGluZyB0aGF0IHNheXM6Cgoi
Uk9DS0NISVBfRVJSQVRVTV8xMjM0NTY6IFRoZSBHSUM2MDAgaW50ZWdyYXRpb24gaW4gUkszNTZ4
IGRvZXNuJ3QKIHN1cHBvcnQgYW55IG9mIHRoZSBzaGFyZWFiaWxpdHkgb3IgY2FjaGVhYmlsaXR5
IGF0dHJpYnV0ZXMsIGFuZAogcmVxdWlyZXMgYm90aCB2YWx1ZXMgdG8gYmUgc2V0IHRvIDBiMDAg
Zm9yIGFsbCB0aGUgSVRTIGFuZAogUmVkaXN0cmlidXRvciB0YWJsZXMuIgoKVGhpcyBpcyBwcmV0
dHkgc2ltaWxhciB0byB0aGUgYnVnIGFmZmVjdGluZyBUaHVuZGVyWCB3aXRoIGl0cyAiZXJyYXR1
bQoyNDMxMyIgKGNvdmVyZWQgYnkgQ09ORklHX0NBVklVTV9FUlJBVFVNXzIyMzc1KSwgd2hlcmUg
dGhlIHRhYmxlcyBoYXZlCnRvIGJlIGZsYWdnZWQgYXMgbm9uLWNhY2hlYWJsZS4gVGhlIFJvY2tj
aGlwIG9uZSBpcyBqdXN0IHdvcnNlLgoKV2UgbmVlZCBhbiBvZmZpY2lhbCBlcnJhdHVtIG51bWJl
ciBzbyB0aGF0IHdlIGNhbiByZWZlciB0byBpdCBpbiB0aGUKc291cmNlLCBjb21taXQgbG9nIGFu
ZCBkb2N1bWVudGF0aW9uLCBhcyB3ZWxsIGFzIGNyb3NzLXJlZmVyZW5jZSBpdAp3aXRoIHRoZSBU
Uk0uIFRoaXMgbnVtYmVyIHdpbGwgYmUgcGFydCBvZiBhIGNvbmZpZ3VyYXRpb24gc3ltYm9sIHRo
YXQKd2lsbCBtYWtlIHRoZSBjb21waWxhdGlvbiBjb25kaXRpb25hbCBzbyB0aGF0IHBlb3BsZSBk
b24ndCBoYXZlIHRvCmNhcnJ5IHRoZSBleHRyYSBidXJkZW4gZ2VuZXJhdGVkIGJ5IHRoaXMgYnVn
IGlmIHRoZXkgZG9uJ3QgbmVlZCB0by4KClNhbWUgdGhpbmcgZ29lcyBmb3IgdGhlIDMyYml0IGJ1
Zy4KCj4gCj4gV2UgY29uc2lkZXIgdGhpcyBhcyBhIFNvQyBpbXBsZW1lbnQgZGVzaWduIGluc3Rl
YWQgb2YgYSBidWcsIHNvIHdlCj4gd2lsbCBhZGQgZG9jdW1lbnQgaW4gUkszNTZYwqAgVFJNIHRv
IGRlc2NyaWJlIHRoZSBHSUMgZGVzaWduLCBidXQgbm8KPiBpZGVhIGhvdyB0byBwcm92aWRlIHRo
ZSBlcnJhdGEuCj4gCj4gSGVyZSBpcyB0aGUgc2hhcmVhYmlseSBhdHRyaWJ1dGUgZnJvbSBBUk0g
R0lDIGFyY2hpdGVjdHVyZSBzcGVjaWZpY2F0aW9uOgo+IFNoYXJlYWJpbGl0eSwgYml0cyBbMTE6
MTBdIChmcm9tIEdJVFNfQ0JBU0VSKQo+IEluZGljYXRlcyB0aGUgU2hhcmVhYmlsaXR5IGF0dHJp
YnV0ZXMgb2YgYWNjZXNzZXMgdG8gdGhlIGNvbW1hbmQKPiBxdWV1ZS4gVGhlIHBvc3NpYmxlIHZh
bHVlcyBvZiB0aGlzIGZpZWxkIGFyZToKPiAwYjAwIE5vbi1zaGFyZWFibGUuCj4gMGIwMSBJbm5l
ciBTaGFyZWFibGUuCj4gMGIxMCBPdXRlciBTaGFyZWFibGUuCj4gMGIxMSBSZXNlcnZlZC4gVHJl
YXRlZCBhcyAwYjAwLgo+IEl0IGlzIElNUExFTUVOVEFUSU9OIERFRklORUQgd2hldGhlciB0aGlz
IGZpZWxkIGhhcyBhIGZpeGVkIHZhbHVlIG9yCj4gY2FuIGJlIHByb2dyYW1tZWQgYnkgc29mdHdh
cmUuIEltcGxlbWVudGluZyB0aGlzIGZpZWxkIHdpdGggYSBmaXhlZAo+IHZhbHVlIGlzIGRlcHJl
Y2F0ZWQuCj4gT24gYSBXYXJtIHJlc2V0LCB0aGlzIGZpZWxkIHJlc2V0cyB0byBhbiBhcmNoaXRl
Y3R1cmFsbHkgVU5LTk9XTiB2YWx1ZQo+IAo+IEFzIHlvdSBjYW4gc2VlLCAiSW1wbGVtZW50aW5n
IHRoaXMgZmllbGQgd2l0aCBhIGZpeGVkIHZhbHVlIGlzCj4gZGVwcmVjYXRlZCIsIHNvIHNvZnR3
YXJlIHNob3VsZCBwcm9ncmFtIHRoaXMgZmllbGQgdG8gJzBiMDAKPiBOb24tc2hhcmVhYmxlJyBp
ZiB0aGUgU29DIGRlc2lnbiBkb2VzIG5vdCBzdXBwb3J0IHRoZSBjYWNoZQo+IHNoYXJlYWJpbGl0
eS4KCltJIHJlYWxseSBmZWVsIHNwZWNpYWwgd2hlbiBwZW9wbGUgcXVvdGUgdGhlIEdJQyBzcGVj
IGF0IG1lXQoKVGhhdCBpc24ndCB3aGF0IGl0IHNheXMuIEhhcmRjb2RpbmcgdGhlIGZpZWxkIHdp
dGggYSBmaXhlZCB2YWx1ZSBpcwppbmRlZWQgZGVwcmVjYXRlZCwgYnV0IHRoYXQgZG9lc24ndCBt
ZWFuIHRoaXMgZmllbGQgc2hvdWxkIGFjY2VwdAp2YWx1ZXMgdGhhdCB0aGUgSFcgY2Fubm90IHN1
cHBvcnQuIElmIGFueXRoaW5nLCB3aGF0IHRoaXMgc2F5cyBpcyAidHJ5CmFuZCBpbXBsZW1lbnQg
dGhlIG9wdGlvbnMgdGhhdCBTVyBpcyBnb2luZyB0byB1c2UiLgoKQnV0IHlvdSBuZWVkIHRvIGdp
dmUgU1cgYW4gaW5kaWNhdGlvbiBvZiB3aGF0IGlzIHVzYWJsZSwgYmVjYXVzZSB0aGVyZQppcyBu
byBvdGhlciB3YXkgdG8gKmRpc2NvdmVyKiB3aGF0IHRoZSBTb0MgaXMgY2FwYWJsZSBvZiBhdCBy
dW50aW1lLgpPdGhlcndpc2UsIHdlIHdvdWxkIG5lZWQgdG8gY2FycnkgYSBwZXItU29DIGxpc3Qg
b2Ygd2hhdCB0aGUgSFcKc3VwcG9ydHMuIEkgZG9uJ3QgdGhpbmsgdGhhdCdzIHRoZSByaWdodCB0
aGluZyB0byBkbyAoYW5kIHlvdSdyZSBhYm91dAo4IHllYXJzIHRvbyBsYXRlIGFueXdheSkuCgpP
dGhlciBHSUM2MDAgaW50ZWdyYXRpb25zIGdvdCBpdCBwZXJmZWN0bHkgcmlnaHQsIGJ5IHRoZSB3
YXkuIFNhbWUgZm9yCm90aGVyIEdJQyBpbXBsZW1lbnRhdGlvbnMsIHdpdGggdGhlIG5vdGFibGUg
ZXhjZXB0aW9uIG9mIENhdml1bSBhbmQKdGhlaXIgZmlyc3QgR0lDIGluIFRodW5kZXJYLCBhcyBk
ZXNjcmliZWQgYWJvdmUuCgpUaGFua3MsCgoJTS4KCi0tIApXaXRob3V0IGRldmlhdGlvbiBmcm9t
IHRoZSBub3JtLCBwcm9ncmVzcyBpcyBub3QgcG9zc2libGUuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
