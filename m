Return-Path: <SRS0=Ggyc=PC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C544C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 07:31:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 41D1A60FDA
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 07:31:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 41D1A60FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eO14M/4ZaYb6GWPemRZ4jrO4V5Rgb8JhkwwRp+dfLNw=; b=gdEX3LBTNGQ/zP
	L8sOKqjWO4/qF9XMJSC9TwPatxATbXB1zgtxYd1hejqytZ0rfcgqPMAIAu2B0w8zm5G3OO9Mn+6aw
	2LKhGiUX4DZD1GRLYPvRrPQr3yRp/8cLngKUatUj4gqDMdLKkEXEnmr3nc46pMyms77sTRbtiXFfO
	5FLAmIx9RMTs+vC/KqKY0oTTkiQaAV1auXNQI1j8Mbu2evf0357nSdvS9ni9UG9zwvMl1gsq+vTk4
	6nDTi4GH2AvJNK0W8dXK0yftPdErqtsL5q595YG/WeJnR9BYQDIzPc3LmzW9kpwElOfDOZCis9dCG
	zvKYDjo8jJ/rojGIoVMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mavD3-001ule-4v; Thu, 14 Oct 2021 07:31:25 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mavD0-001ukI-Sk
 for linux-rockchip@lists.infradead.org; Thu, 14 Oct 2021 07:31:24 +0000
Received: by mail-lf1-x135.google.com with SMTP id x27so22756384lfa.9
 for <linux-rockchip@lists.infradead.org>; Thu, 14 Oct 2021 00:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5v6Yv2PTALZV81MwXFtZ1rqpH6wW8mXRMgyhMKUACeE=;
 b=jKzQfSO+x3YNza53ylLadTQhAg3leSQwNu5To0Md4XLrrAY2BcB2EpzcSSZ/dcQRAx
 GCS2hPQShkC7t3kOWeD+36J2jsuENANsFd60MRmuYDWwgFpnYTA2sPXsP3JaNGG34EJw
 ODPXTfDUaHEglmjbIKT1S1Fpu2CYCeoyKvhF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5v6Yv2PTALZV81MwXFtZ1rqpH6wW8mXRMgyhMKUACeE=;
 b=2KRAzwt951cHeNnYQwntgIjUVfNp7NonIbDX7+AEuUjIQDeqxAlYfe7Bd6ww2wszI5
 48JA2smvOR3KboG8+lpcDIo1MfOn3q58HsXlqwdQzpkJ5KRyzQoCj4olY5w5nJZFW6EF
 D/Ufdelh6F57mqgrb7T/Y6j4cJJkqCqaGfGZGL9tBqzQ3PZ57U7V24hOQPNzdiLHNbGW
 q2iUVS3A1Tu2vG1jBd7d/Z1Kv6XD6aZO2M5rQboqe0RHFhbd1cU8QHH0tUGdO6YmYMOg
 hoDqNBegIOVBzdAhZUMfAeOC4rBuuldXJRVtg4En9s3wZqljRT7Xq3Lqh3DDTobE7VMe
 hLmA==
X-Gm-Message-State: AOAM530lniw8+ebq2SBHEYrm5NYp9+v3Q5T0N9jtzc8kxG760gidTI4U
 dX3IP+El0rqvc1f/nnZEnxChNFHTYGvLg9Jdg5qHew==
X-Google-Smtp-Source: ABdhPJwUzlceOWh+FeOpcEW7hALYyLGrRfBub2/LsdDbiuQ7zctHURNLqdHAbEtPrWJMw8kuOqGzvHLNlygUTXK0wRI=
X-Received: by 2002:a05:651c:907:: with SMTP id
 e7mr4394571ljq.457.1634196679846; 
 Thu, 14 Oct 2021 00:31:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211008100423.739462-1-wenst@chromium.org>
 <f108f23dadc846222c63c88af826dae9c5082d83.camel@ndufresne.ca>
 <CAGXv+5FnFq1mN79sqUp-o6pHirYvp55gurnsUCgqYvEAX2=4oQ@mail.gmail.com>
 <ff0769efee51e15451d48e23860f8b1710593cd7.camel@ndufresne.ca>
In-Reply-To: <ff0769efee51e15451d48e23860f8b1710593cd7.camel@ndufresne.ca>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 14 Oct 2021 15:31:08 +0800
Message-ID: <CAGXv+5GJCaxnPPkXRp5xrTBuq-5=ggfjPbRhyS4vdm3meM_4eg@mail.gmail.com>
Subject: Re: [PATCH 0/2] media: rkvdec: Align decoder behavior with Hantro and
 Cedrus
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-staging@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_003122_942038_2DB1282B 
X-CRM114-Status: GOOD (  47.14  )
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

T24gV2VkLCBPY3QgMTMsIDIwMjEgYXQgOTo0MCBQTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFz
QG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4KPiBMZSBtZXJjcmVkaSAxMyBvY3RvYnJlIDIwMjEgw6Ag
MTU6MDUgKzA4MDAsIENoZW4tWXUgVHNhaSBhIMOpY3JpdCA6Cj4gPiBIaSwKPiA+Cj4gPiBPbiBG
cmksIE9jdCA4LCAyMDIxIGF0IDExOjQyIFBNIE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1
ZnJlc25lLmNhPiB3cm90ZToKPiA+ID4KPiA+ID4gSGkgQ2hlbi1ZdSwKPiA+ID4KPiA+ID4gdGhh
bmtzIGZvciBsb29raW5nIGludG8gdGhpcy4KPiA+ID4KPiA+ID4gTGUgdmVuZHJlZGkgMDggb2N0
b2JyZSAyMDIxIMOgIDE4OjA0ICswODAwLCBDaGVuLVl1IFRzYWkgYSDDqWNyaXQgOgo+ID4gPiA+
IEhpIGV2ZXJ5b25lLAo+ID4gPiA+Cj4gPiA+ID4gV2hpbGUgd29ya2luZyBvbiB0aGUgcmt2ZGVj
IEguMjY0IGRlY29kZXIgZm9yIENocm9tZU9TLCBJIG5vdGljZWQgc29tZQo+ID4gPiA+IGJlaGF2
aW9yYWwgZGlmZmVyZW5jZXMgY29tcGFyZWQgdG8gSGFudHJvIGFuZCBDZWRydXM6Cj4gPiA+ID4K
PiA+ID4gPiAxLiBUaGUgZHJpdmVyIGFsd2F5cyBvdmVycmlkZXMgdGhlIHNpemVpbWFnZSBzZXR0
aW5nIGdpdmVuIGJ5IHVzZXJzcGFjZQo+ID4gPiA+ICAgIGZvciB0aGUgb3V0cHV0IGZvcm1hdC4g
VGhpcyByZXN1bHRzIGluIGluc3VmZmljaWVudCBidWZmZXIgc3BhY2Ugd2hlbgo+ID4gPiA+ICAg
IHJ1bm5pbmcgdGhlIENocm9tZU9TIHZpZGVvX2RlY29kZV9hY2NlbGVyYXRvcl90ZXN0cyB0ZXN0
IHByb2dyYW0sCj4gPiA+ID4gICAgbGlrZWx5IGR1ZSB0byBhIHNtYWxsIGluaXRpYWwgcmVzb2x1
dGlvbiBmb2xsb3dlZCBieSBkeW5hbWljCj4gPiA+ID4gICAgcmVzb2x1dGlvbiBjaGFuZ2UuCj4g
PiA+ID4KPiA+ID4gPiAyLiBEb2Vzbid0IHN1cHBvcnQgZHluYW1pYyByZXNvbHV0aW9uIGNoYW5n
ZS4KPiA+ID4gPgo+ID4gPiA+IFRoaXMgc21hbGwgc2VyaWVzIGZpeGVzIGJvdGggYW5kIGFsaWdu
cyB0aGUgYmVoYXZpb3Igd2l0aCB0aGUgb3RoZXIgdHdvCj4gPiA+ID4gc3RhdGVsZXNzIGRlY29k
ZXIgZHJpdmVycy4gVGhpcyB3YXMgdGVzdGVkIG9uIHRoZSBkb3duc3RyZWFtIENocm9tZU9TCj4g
PiA+ID4gNS4xMCBrZXJuZWwgd2l0aCBDaHJvbWVPUy4gQWxzbyBjb21waWxlZCB0ZXN0ZWQgb24g
bWFpbmxpbmUgYnV0IEkgZG9uJ3QKPiA+ID4gPiBoYXZlIGFueSBvdGhlciBSSzMzOTkgZGV2aWNl
cyBzZXQgdXAgdG8gdGVzdCB2aWRlbyBzdHVmZiwgc28gdGVzdGluZwo+ID4gPiA+IHdvdWxkIGJl
IHZlcnkgbXVjaCBhcHByZWNpYXRlZC4KPiA+ID4gPgo+ID4gPiA+IEFsc28sIEknbSBub3Qgc3Vy
ZSBpZiB1c2VyIGFwcGxpY2F0aW9ucyBhcmUgcmVxdWlyZWQgdG8gY2hlY2sgdGhlIHZhbHVlCj4g
PiA+ID4gb2Ygc2l6ZWltYWdlIHVwb24gU19GTVQgcmV0dXJuLiBJZiB0aGUgdmFsdWUgaXMgZGlm
ZmVyZW50IG9yIHRvbyBzbWFsbCwKPiA+ID4gPiB3aGF0IGNhbiB0aGUgYXBwbGljYXRpb24gZG8g
YmVzaWRlcyBmYWlsPyBBRkFJQ1QgaXQgY2FuJ3Qgc3BsaXQgdGhlCj4gPiA+ID4gZGF0YSBvZiBv
bmUgZnJhbWUgKG9yIHNsaWNlKSBiZXR3ZWVuIGRpZmZlcmVudCBidWZmZXJzLgo+ID4gPgo+ID4g
PiBXaGlsZSBtb3N0IHNvZnR3YXJlIG91dCB0aGVyZSBqdXN0IGFzc3VtZXMgdGhhdCBkcml2ZXIg
d2lsbCBkbyBpdCByaWdodCBhbmQKPiA+ID4gY3Jhc2ggd2hlbiBpdCdzIG5vdCB0aGUgY2FzZSwg
YXBwbGljYXRpb24gdGhhdCBkbyBtYXAgdGhlIGJ1ZmZlciB0byBDUFUgbXVzdAo+ID4gPiByZWFk
IGJhY2sgdGhlIGZtdCBzdHJ1Y3R1cmUgYXMgdGhlIGRyaXZlcnMgYXJlIGFsbCBmYWlsLXNhZmUg
YW5kIHdpbGwgbW9kaWZ5Cj4gPiA+IHRoYXQgc3RydWN0dXJlIHRvIGEgc2V0IG9mIHZhbGlkIHZh
bHVlIHMgZm9yIHRoZSBjb250ZXh0Lgo+ID4KPiA+IEkgYmVsaWV2ZSB3aGF0IGlzIGhhcHBlbmlu
ZyBpbiBDaHJvbWl1bSBpcyB0aGF0IHRoZSBkZWNvZGVyIGlzIG9wZW5lZCB3aXRoCj4gPiBzb21l
IGRlZmF1bHQgc2V0dGluZ3MsIGluY2x1ZGluZyB0aGUgc21hbGxlc3QgdmlhYmxlIHJlc29sdXRp
b24gZm9yIHRoZQo+ID4gb3V0cHV0IHNpZGUsIGFuZCB0aGUgYnVmZmVycyBhbGxvY2F0ZWQgYWNj
b3JkaW5nbHkuIFdoZW4gZHluYW1pYyByZXNvbHV0aW9uCj4gPiBjaGFuZ2UgaGFwcGVucywgdGhl
IGRlY29kZXIgZG9lcyBub3QgY2hlY2sgaWYgdGhlIGN1cnJlbnQgYnVmZmVycyBhcmUKPiA+IHN1
ZmZpY2llbnRseSBzaXplZDsgaXQganVzdCBhc3N1bWVzIHRoYXQgdGhleSBhcmUuIEFuZCB3aGVu
IGl0IHN0YXJ0cwo+ID4gcHVzaGluZyBkYXRhIGludG8gdGhlIGJ1ZmZlcnMsIGl0IHJlYWxpemVz
IHRoZXkgYXJlIHRvbyBzbWFsbCBhbmQgZmFpbHMuCj4gPgo+ID4gVGhlIHNwZWMgYWxzbyBzYXlz
Ogo+ID4KPiA+ICAgICBDbGllbnRzIGFyZSBhbGxvd2VkIHRvIHNldCB0aGUgc2l6ZWltYWdlIGZp
ZWxkIGZvciB2YXJpYWJsZSBsZW5ndGgKPiA+ICAgICBjb21wcmVzc2VkIGRhdGEgZmxhZ2dlZCB3
aXRoIFY0TDJfRk1UX0ZMQUdfQ09NUFJFU1NFRCBhdCBpb2N0bAo+ID4gICAgIFZJRElPQ19FTlVN
X0ZNVCwgYnV0IHRoZSBkcml2ZXIgbWF5IGlnbm9yZSBpdCBhbmQgc2V0IHRoZSB2YWx1ZSBpdHNl
bGYsCj4gPiAgICAgb3IgaXQgbWF5IG1vZGlmeSB0aGUgcHJvdmlkZWQgdmFsdWUgYmFzZWQgb24g
YWxpZ25tZW50IHJlcXVpcmVtZW50cyBvcgo+ID4gICAgIG1pbmltdW0vbWF4aW11bSBzaXplIHJl
cXVpcmVtZW50cy4KPiA+Cj4gPiBUaGUgc3BlYyBvbmx5IGd1YXJhbnRlZXMgdGhhdCB0aGUgYnVm
ZmVycyBhcmUgb2Ygc3VmZmljaWVudCBzaXplIGZvciB0aGUKPiA+IHJlc29sdXRpb24gY29uZmln
dXJlZCBhdCB0aGUgdGltZSB0aGV5IHdlcmUgYWxsb2NhdGVkL3JlcXVlc3RlZC4KPiA+Cj4gPiBT
byBJIHRoaW5rIG15IGZpcnN0IHBhdGNoIGlzIGEgd29ya2Fyb3VuZCBmb3IgYSBzb21ld2hhdCBi
cm9rZW4gdXNlcnNwYWNlLgo+ID4gQnV0IGl0IHNlZW1zIHRoZSBvdGhlciBzdGF0ZWxlc3MgZHJp
dmVycyBhcmUgcHJvdmlkaW5nIHNpbWlsYXIgYmVoYXZpb3IsCj4gPiBhcyBJIHByZXZpb3VzbHkg
bWVudGlvbmVkLgo+Cj4gVGhhdCdzIHdoYXQgSSBtZWFuLCB0aGlzIGlzIG5vdCBhIGRyaXZlciBi
dWcgc3RyaWN0bHkgc3BlYWtpbmcgKGFzc3VtaW5nIGl0IGRvZXMKPiBndWFyYW50eSB0aGUgYnVm
ZmVyIHNpemUgaXMgc3VmZmljaWVudCkgYnV0IGl0IGlzIHdpdGhvdXQgeW91ciBjaGFuZ2UKPiBp
bmNvbnZlbmllbnQsIGFzIHVzZXJzcGFjZSBtYXkgYmUgYXdhcmUgb2YgdGhlIGxhcmdlc3QgcmVz
b2x1dGlvbiBpdCB3aWxsCj4gZGVjb2RlLCBhbmQgbWF5IHdhbnQgdG8gYWxsb2NhdGUgbGFyZ2Vy
IGJ1ZmZlciB1cGZyb250LgoKVGhpbmtpbmcgYWJvdXQgdGhpcyBtb3JlLCBJIHRoaW5rIGEgZmV3
IGZvbGxvdyB1cCBmaXhlcyBmb3IgZWFjaCBkcml2ZXIKYXJlIGluIG9yZGVyLiBUaGUgc3BlYyBp
bXBsaWVzIHRoYXQgdGhlIGRyaXZlciBzaG91bGQgb3ZlcnJpZGUgdGhlIHZhbHVlCnNob3VsZCB1
c2Vyc3BhY2UgZ2l2ZSBzb21lIHVucmVhbGlzdGljIHZhbHVlLCBzdWNoIGFzIGFza2luZyBmb3Ig
YSAyNTYgYnl0ZQpidWZmZXIgZm9yIGEgNEsgZnJhbWUgc2l6ZS4KCkNlZHJ1cyAoQ0NpbmcgSmVy
bmVqKSBjb21lcyBjbG9zZSwgYnV0IGEgMUsgYnVmZmVyIG1pZ2h0IG5vdCBiZSBlbm91Z2ggZm9y
CnJlYWxseSBsYXJnZSBmcmFtZXMsIGV2ZW4gdGhvdWdoIGl0J3Mgc2xpY2UgYmFzZWQ/CgpDaGVu
WXUKCgo+IEFzIHBlciBDaHJvbWl1bSBidWcsIHRoaXMgaXMgYmVpbmcgYWRkcmVzc2VkIGFscmVh
ZHkuIFRoYW5rcyBmb3IgdGhpcyBkcml2ZXIKPiBpbXByb3ZlbWVudC4KPgo+ID4KPiA+ID4gQXMg
Zm9yIG9wcG9zaXRlIGRpcmVjdGlvbiAob3V0cHV0IHZzIGNhcHR1cmUpIGZvcm1hdCBiZWluZyBj
aGFuZ2VkLCB0aGlzIHNob3VsZAo+ID4gPiBiZSBkb2N1bWVudGVkIGluIHRoZSBzcGVjLCBpZiB5
b3UgZmluZCBpdCB0b28gdW5jbGVhciBvciBtaXNzaW5nIGZvciBzYXRlbGVzcwo+ID4gPiBjb2Rl
YyAoSSBrbm93IGl0J3MgdGhlcmUgZm9yIHN0YXRlZnVsIGJ1dCBjYW4ndCByZW1lbWJlciwgd291
bGQgaGF2ZSB0byByZS1yZWFkLAo+ID4gPiBmb3Igc3RhdGVsZXNzKSBsZXQgdXMga25vdy4KPiA+
Cj4gPiBBRkFJQ1QgdGhlIGNhcHR1cmUgc2lkZSBpcyB3b3JraW5nIE9LIGFuZCB0byBzcGVjLgo+
ID4KPiA+Cj4gPiBSZWdhcmRzCj4gPiBDaGVuWXUKPiA+Cj4gPiA+IHJlZ2FyZHMsCj4gPiA+IE5p
Y29sYXMKPiA+ID4KPiA+ID4gPgo+ID4gPiA+IEFuZHJ6ZWosIEkgYmVsaWV2ZSB0aGUgc2Vjb25k
IHBhdGNoIHdvdWxkIGNvbmZsaWN0IHdpdGggeW91ciBWUDkgc2VyaWVzLgo+ID4gPiA+Cj4gPiA+
ID4KPiA+ID4gPiBSZWdhcmRzCj4gPiA+ID4gQ2hlbll1Cj4gPiA+ID4KPiA+ID4gPiBDaGVuLVl1
IFRzYWkgKDIpOgo+ID4gPiA+ICAgbWVkaWE6IHJrdmRlYzogRG8gbm90IG92ZXJyaWRlIHNpemVp
bWFnZSBmb3Igb3V0cHV0IGZvcm1hdAo+ID4gPiA+ICAgbWVkaWE6IHJrdmRlYzogU3VwcG9ydCBk
eW5hbWljIHJlc29sdXRpb24gY2hhbmdlcwo+ID4gPiA+Cj4gPiA+ID4gIGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYyB8ICA1ICstLQo+ID4gPiA+ICBkcml2ZXJzL3N0
YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jICAgICAgfCA0MCArKysrKysrKysrKy0tLS0tLS0t
LS0tCj4gPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRp
b25zKC0pCj4gPiA+ID4KPiA+ID4KPiA+ID4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
