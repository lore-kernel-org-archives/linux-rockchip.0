Return-Path: <SRS0=Ggyc=PC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06C0C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 08:46:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 722FA60FDA
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 08:46:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 722FA60FDA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BTw9d/3Ca/W4RjvdMu/jFe4fETlwSAYrMv+jx1q5iI=; b=JQINicVpS6JvnF
	RRAKme/IK54QdZpLe5GzhJxMnmb2jxMmclcRfK/pr9Pj+ZT3H7F+zY2eUVHcYNkdOo7K4WMpsp//6
	N+q1HlXtUt1t+4qDt90MW3jLtr+UBE8PhA8Hz3AwOmY7aQmm8sYaXyrzUB4AtNWC6adS7acbiHL6l
	Ht4xS+8xonuxxcbWKMVM3aLLk3ZiDT1QWh+PBk29SkiCJzAERBAT1Xo9PXtd+3/4VyqzjERsNcvNV
	prgcvk99NxKKqaFNFP0jh0ToPzzUrtqN85OvWMjIBdEFTNTg8GO+9Luh48kLx72ExTARS0qblMOLU
	dbKvcLU5aYe+gJlohWeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mawO0-002FFd-M7; Thu, 14 Oct 2021 08:46:48 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mawNx-002FEB-PI
 for linux-rockchip@lists.infradead.org; Thu, 14 Oct 2021 08:46:47 +0000
Received: by mail-ed1-x531.google.com with SMTP id d3so21102380edp.3
 for <linux-rockchip@lists.infradead.org>; Thu, 14 Oct 2021 01:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7w2iMxFe61jN1rv6dN3yP4oCTOaGLGThPgxPVtx1pTk=;
 b=7or4NdH+O7yAtsklrYS3zkReLbGJR+Q0kbSxNVYs+Xkr81NnnEcpo/x+q7lk2OHlWs
 jIg9COjRUdT0Og0dYS4CTAMsf7/a7qGw7D8I4LNA/SdUdgufpG3aObBjUT5E6lN+wL8Q
 1SChuxMc8FnpuexyslnBYQm+x77NDY9v+oW0XxjU8ycPQayiYcobELPqZkB+weFDuFGc
 yqv7qoIXrCWPoLeDpzqYHeJbUAOgGpNYnG2XWEuRKJ+o8d3Us9dsXpuVUqRLhKrxZFOx
 mSIoMKva4ngeTj5KR3a/m/yPWH17cD4FGpnUv1N+nyLLmr6t2l8YezD1v1AiHVTemzbT
 2Xeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7w2iMxFe61jN1rv6dN3yP4oCTOaGLGThPgxPVtx1pTk=;
 b=0RoQCn6/t8FUtHWhABv79rqPqzGhRnjKtGh76xRmyshhpivEOREpwg8Jh2D2TmdVvz
 PM7ZzJuUun1VOGwr0tlwLIqecxfRadUZLTtXb5zy3+H2v/mOGu67hxY3P742r5wbYBN9
 Uz+TI3QtXNE6Kd8sQiwlscKaOb9fxyNkMjv2Ojj0iZh+XeuWh830uhY83fLx5WM9wfWb
 lsJOy40IznyYuPv05niuRvDekuCxfYkW4iWNuBXPjRrsPqlaDbP++aV/FzbfifhFGyd8
 A1Ozc4vjbOxKrseqBeDUIeQ3qMrS5KvpZ+oIYEOUVL05Cb/6dAKgM+S/KN1eLXybSZdg
 gCfQ==
X-Gm-Message-State: AOAM530e6jfYS2X/M3auwIPhGY5aq1nhq1EKs5yhEGKsMZDMLd+4XlMP
 jNNnPYPysHL+ImDXBXrkV72eecrGQAAGGxkXV6b96w==
X-Google-Smtp-Source: ABdhPJxXEYRMejmM3Dv1g6yLHgMuEd/iyRmUiGS8LsqJ6QJsLSp1H9IQu0mLeB65DlX/OHTUCCdEsvZErD5AX220svU=
X-Received: by 2002:a17:906:b782:: with SMTP id
 dt2mr2345631ejb.310.1634201202554; 
 Thu, 14 Oct 2021 01:46:42 -0700 (PDT)
MIME-Version: 1.0
References: <20211008100423.739462-1-wenst@chromium.org>
 <f108f23dadc846222c63c88af826dae9c5082d83.camel@ndufresne.ca>
 <CAGXv+5FnFq1mN79sqUp-o6pHirYvp55gurnsUCgqYvEAX2=4oQ@mail.gmail.com>
 <ff0769efee51e15451d48e23860f8b1710593cd7.camel@ndufresne.ca>
 <CAGXv+5GJCaxnPPkXRp5xrTBuq-5=ggfjPbRhyS4vdm3meM_4eg@mail.gmail.com>
In-Reply-To: <CAGXv+5GJCaxnPPkXRp5xrTBuq-5=ggfjPbRhyS4vdm3meM_4eg@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 14 Oct 2021 05:46:30 -0300
Message-ID: <CAAEAJfAratFPK0iU8QWMr36ZFCL5cgBneKkzymy+gCgJV=goOg@mail.gmail.com>
Subject: Re: [PATCH 0/2] media: rkvdec: Align decoder behavior with Hantro and
 Cedrus
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Linux Media Mailing List <linux-media@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>,
 LKML <linux-kernel@vger.kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_014646_059840_A505198D 
X-CRM114-Status: GOOD (  51.47  )
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

T24gVGh1LCAxNCBPY3QgMjAyMSBhdCAwNDozMSwgQ2hlbi1ZdSBUc2FpIDx3ZW5zdEBjaHJvbWl1
bS5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCBPY3QgMTMsIDIwMjEgYXQgOTo0MCBQTSBOaWNvbGFz
IER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4gPgo+ID4gTGUgbWVyY3Jl
ZGkgMTMgb2N0b2JyZSAyMDIxIMOgIDE1OjA1ICswODAwLCBDaGVuLVl1IFRzYWkgYSDDqWNyaXQg
Ogo+ID4gPiBIaSwKPiA+ID4KPiA+ID4gT24gRnJpLCBPY3QgOCwgMjAyMSBhdCAxMTo0MiBQTSBO
aWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4gPiA+ID4KPiA+
ID4gPiBIaSBDaGVuLVl1LAo+ID4gPiA+Cj4gPiA+ID4gdGhhbmtzIGZvciBsb29raW5nIGludG8g
dGhpcy4KPiA+ID4gPgo+ID4gPiA+IExlIHZlbmRyZWRpIDA4IG9jdG9icmUgMjAyMSDDoCAxODow
NCArMDgwMCwgQ2hlbi1ZdSBUc2FpIGEgw6ljcml0IDoKPiA+ID4gPiA+IEhpIGV2ZXJ5b25lLAo+
ID4gPiA+ID4KPiA+ID4gPiA+IFdoaWxlIHdvcmtpbmcgb24gdGhlIHJrdmRlYyBILjI2NCBkZWNv
ZGVyIGZvciBDaHJvbWVPUywgSSBub3RpY2VkIHNvbWUKPiA+ID4gPiA+IGJlaGF2aW9yYWwgZGlm
ZmVyZW5jZXMgY29tcGFyZWQgdG8gSGFudHJvIGFuZCBDZWRydXM6Cj4gPiA+ID4gPgo+ID4gPiA+
ID4gMS4gVGhlIGRyaXZlciBhbHdheXMgb3ZlcnJpZGVzIHRoZSBzaXplaW1hZ2Ugc2V0dGluZyBn
aXZlbiBieSB1c2Vyc3BhY2UKPiA+ID4gPiA+ICAgIGZvciB0aGUgb3V0cHV0IGZvcm1hdC4gVGhp
cyByZXN1bHRzIGluIGluc3VmZmljaWVudCBidWZmZXIgc3BhY2Ugd2hlbgo+ID4gPiA+ID4gICAg
cnVubmluZyB0aGUgQ2hyb21lT1MgdmlkZW9fZGVjb2RlX2FjY2VsZXJhdG9yX3Rlc3RzIHRlc3Qg
cHJvZ3JhbSwKPiA+ID4gPiA+ICAgIGxpa2VseSBkdWUgdG8gYSBzbWFsbCBpbml0aWFsIHJlc29s
dXRpb24gZm9sbG93ZWQgYnkgZHluYW1pYwo+ID4gPiA+ID4gICAgcmVzb2x1dGlvbiBjaGFuZ2Uu
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gMi4gRG9lc24ndCBzdXBwb3J0IGR5bmFtaWMgcmVzb2x1dGlv
biBjaGFuZ2UuCj4gPiA+ID4gPgo+ID4gPiA+ID4gVGhpcyBzbWFsbCBzZXJpZXMgZml4ZXMgYm90
aCBhbmQgYWxpZ25zIHRoZSBiZWhhdmlvciB3aXRoIHRoZSBvdGhlciB0d28KPiA+ID4gPiA+IHN0
YXRlbGVzcyBkZWNvZGVyIGRyaXZlcnMuIFRoaXMgd2FzIHRlc3RlZCBvbiB0aGUgZG93bnN0cmVh
bSBDaHJvbWVPUwo+ID4gPiA+ID4gNS4xMCBrZXJuZWwgd2l0aCBDaHJvbWVPUy4gQWxzbyBjb21w
aWxlZCB0ZXN0ZWQgb24gbWFpbmxpbmUgYnV0IEkgZG9uJ3QKPiA+ID4gPiA+IGhhdmUgYW55IG90
aGVyIFJLMzM5OSBkZXZpY2VzIHNldCB1cCB0byB0ZXN0IHZpZGVvIHN0dWZmLCBzbyB0ZXN0aW5n
Cj4gPiA+ID4gPiB3b3VsZCBiZSB2ZXJ5IG11Y2ggYXBwcmVjaWF0ZWQuCj4gPiA+ID4gPgo+ID4g
PiA+ID4gQWxzbywgSSdtIG5vdCBzdXJlIGlmIHVzZXIgYXBwbGljYXRpb25zIGFyZSByZXF1aXJl
ZCB0byBjaGVjayB0aGUgdmFsdWUKPiA+ID4gPiA+IG9mIHNpemVpbWFnZSB1cG9uIFNfRk1UIHJl
dHVybi4gSWYgdGhlIHZhbHVlIGlzIGRpZmZlcmVudCBvciB0b28gc21hbGwsCj4gPiA+ID4gPiB3
aGF0IGNhbiB0aGUgYXBwbGljYXRpb24gZG8gYmVzaWRlcyBmYWlsPyBBRkFJQ1QgaXQgY2FuJ3Qg
c3BsaXQgdGhlCj4gPiA+ID4gPiBkYXRhIG9mIG9uZSBmcmFtZSAob3Igc2xpY2UpIGJldHdlZW4g
ZGlmZmVyZW50IGJ1ZmZlcnMuCj4gPiA+ID4KPiA+ID4gPiBXaGlsZSBtb3N0IHNvZnR3YXJlIG91
dCB0aGVyZSBqdXN0IGFzc3VtZXMgdGhhdCBkcml2ZXIgd2lsbCBkbyBpdCByaWdodCBhbmQKPiA+
ID4gPiBjcmFzaCB3aGVuIGl0J3Mgbm90IHRoZSBjYXNlLCBhcHBsaWNhdGlvbiB0aGF0IGRvIG1h
cCB0aGUgYnVmZmVyIHRvIENQVSBtdXN0Cj4gPiA+ID4gcmVhZCBiYWNrIHRoZSBmbXQgc3RydWN0
dXJlIGFzIHRoZSBkcml2ZXJzIGFyZSBhbGwgZmFpbC1zYWZlIGFuZCB3aWxsIG1vZGlmeQo+ID4g
PiA+IHRoYXQgc3RydWN0dXJlIHRvIGEgc2V0IG9mIHZhbGlkIHZhbHVlIHMgZm9yIHRoZSBjb250
ZXh0Lgo+ID4gPgo+ID4gPiBJIGJlbGlldmUgd2hhdCBpcyBoYXBwZW5pbmcgaW4gQ2hyb21pdW0g
aXMgdGhhdCB0aGUgZGVjb2RlciBpcyBvcGVuZWQgd2l0aAo+ID4gPiBzb21lIGRlZmF1bHQgc2V0
dGluZ3MsIGluY2x1ZGluZyB0aGUgc21hbGxlc3QgdmlhYmxlIHJlc29sdXRpb24gZm9yIHRoZQo+
ID4gPiBvdXRwdXQgc2lkZSwgYW5kIHRoZSBidWZmZXJzIGFsbG9jYXRlZCBhY2NvcmRpbmdseS4g
V2hlbiBkeW5hbWljIHJlc29sdXRpb24KPiA+ID4gY2hhbmdlIGhhcHBlbnMsIHRoZSBkZWNvZGVy
IGRvZXMgbm90IGNoZWNrIGlmIHRoZSBjdXJyZW50IGJ1ZmZlcnMgYXJlCj4gPiA+IHN1ZmZpY2ll
bnRseSBzaXplZDsgaXQganVzdCBhc3N1bWVzIHRoYXQgdGhleSBhcmUuIEFuZCB3aGVuIGl0IHN0
YXJ0cwo+ID4gPiBwdXNoaW5nIGRhdGEgaW50byB0aGUgYnVmZmVycywgaXQgcmVhbGl6ZXMgdGhl
eSBhcmUgdG9vIHNtYWxsIGFuZCBmYWlscy4KPiA+ID4KPiA+ID4gVGhlIHNwZWMgYWxzbyBzYXlz
Ogo+ID4gPgo+ID4gPiAgICAgQ2xpZW50cyBhcmUgYWxsb3dlZCB0byBzZXQgdGhlIHNpemVpbWFn
ZSBmaWVsZCBmb3IgdmFyaWFibGUgbGVuZ3RoCj4gPiA+ICAgICBjb21wcmVzc2VkIGRhdGEgZmxh
Z2dlZCB3aXRoIFY0TDJfRk1UX0ZMQUdfQ09NUFJFU1NFRCBhdCBpb2N0bAo+ID4gPiAgICAgVklE
SU9DX0VOVU1fRk1ULCBidXQgdGhlIGRyaXZlciBtYXkgaWdub3JlIGl0IGFuZCBzZXQgdGhlIHZh
bHVlIGl0c2VsZiwKPiA+ID4gICAgIG9yIGl0IG1heSBtb2RpZnkgdGhlIHByb3ZpZGVkIHZhbHVl
IGJhc2VkIG9uIGFsaWdubWVudCByZXF1aXJlbWVudHMgb3IKPiA+ID4gICAgIG1pbmltdW0vbWF4
aW11bSBzaXplIHJlcXVpcmVtZW50cy4KPiA+ID4KPiA+ID4gVGhlIHNwZWMgb25seSBndWFyYW50
ZWVzIHRoYXQgdGhlIGJ1ZmZlcnMgYXJlIG9mIHN1ZmZpY2llbnQgc2l6ZSBmb3IgdGhlCj4gPiA+
IHJlc29sdXRpb24gY29uZmlndXJlZCBhdCB0aGUgdGltZSB0aGV5IHdlcmUgYWxsb2NhdGVkL3Jl
cXVlc3RlZC4KPiA+ID4KPiA+ID4gU28gSSB0aGluayBteSBmaXJzdCBwYXRjaCBpcyBhIHdvcmth
cm91bmQgZm9yIGEgc29tZXdoYXQgYnJva2VuIHVzZXJzcGFjZS4KPiA+ID4gQnV0IGl0IHNlZW1z
IHRoZSBvdGhlciBzdGF0ZWxlc3MgZHJpdmVycyBhcmUgcHJvdmlkaW5nIHNpbWlsYXIgYmVoYXZp
b3IsCj4gPiA+IGFzIEkgcHJldmlvdXNseSBtZW50aW9uZWQuCj4gPgo+ID4gVGhhdCdzIHdoYXQg
SSBtZWFuLCB0aGlzIGlzIG5vdCBhIGRyaXZlciBidWcgc3RyaWN0bHkgc3BlYWtpbmcgKGFzc3Vt
aW5nIGl0IGRvZXMKPiA+IGd1YXJhbnR5IHRoZSBidWZmZXIgc2l6ZSBpcyBzdWZmaWNpZW50KSBi
dXQgaXQgaXMgd2l0aG91dCB5b3VyIGNoYW5nZQo+ID4gaW5jb252ZW5pZW50LCBhcyB1c2Vyc3Bh
Y2UgbWF5IGJlIGF3YXJlIG9mIHRoZSBsYXJnZXN0IHJlc29sdXRpb24gaXQgd2lsbAo+ID4gZGVj
b2RlLCBhbmQgbWF5IHdhbnQgdG8gYWxsb2NhdGUgbGFyZ2VyIGJ1ZmZlciB1cGZyb250Lgo+Cj4g
VGhpbmtpbmcgYWJvdXQgdGhpcyBtb3JlLCBJIHRoaW5rIGEgZmV3IGZvbGxvdyB1cCBmaXhlcyBm
b3IgZWFjaCBkcml2ZXIKPiBhcmUgaW4gb3JkZXIuIFRoZSBzcGVjIGltcGxpZXMgdGhhdCB0aGUg
ZHJpdmVyIHNob3VsZCBvdmVycmlkZSB0aGUgdmFsdWUKPiBzaG91bGQgdXNlcnNwYWNlIGdpdmUg
c29tZSB1bnJlYWxpc3RpYyB2YWx1ZSwgc3VjaCBhcyBhc2tpbmcgZm9yIGEgMjU2IGJ5dGUKPiBi
dWZmZXIgZm9yIGEgNEsgZnJhbWUgc2l6ZS4KPgoKV2hlcmUgaXMgdGhlIHNwZWMgaW1wbHlpbmcg
dGhhdD8KClRoaXMgaXMgZW5jb2RlZCBjb250ZW50LCBzbyBJJ20gcmVhbGx5IGluY2xpbmVkIHRv
IGF2b2lkIHRoaXMgcGF0aC4KSGF2aW5nIHRoZSBkcml2ZXIgZGVjaWRlIHdoYXQgaXMgInVucmVh
bGlzdGljIiB3b3VsZCBtZWFuIHNvbWUKaGV1cmlzdGljcyBpbiB0aGUgZHJpdmVycyBmb3Igc29t
ZXRoaW5nIHRoYXQgc2hvdWxkIHJlYWxseSBjb21lIGZyb20gdXNlcnNwYWNlLgoKVGhhbmtzLApF
emVxdWllbAoKPiBDZWRydXMgKENDaW5nIEplcm5laikgY29tZXMgY2xvc2UsIGJ1dCBhIDFLIGJ1
ZmZlciBtaWdodCBub3QgYmUgZW5vdWdoIGZvcgo+IHJlYWxseSBsYXJnZSBmcmFtZXMsIGV2ZW4g
dGhvdWdoIGl0J3Mgc2xpY2UgYmFzZWQ/Cj4KPiBDaGVuWXUKPgo+Cj4gPiBBcyBwZXIgQ2hyb21p
dW0gYnVnLCB0aGlzIGlzIGJlaW5nIGFkZHJlc3NlZCBhbHJlYWR5LiBUaGFua3MgZm9yIHRoaXMg
ZHJpdmVyCj4gPiBpbXByb3ZlbWVudC4KPiA+Cj4gPiA+Cj4gPiA+ID4gQXMgZm9yIG9wcG9zaXRl
IGRpcmVjdGlvbiAob3V0cHV0IHZzIGNhcHR1cmUpIGZvcm1hdCBiZWluZyBjaGFuZ2VkLCB0aGlz
IHNob3VsZAo+ID4gPiA+IGJlIGRvY3VtZW50ZWQgaW4gdGhlIHNwZWMsIGlmIHlvdSBmaW5kIGl0
IHRvbyB1bmNsZWFyIG9yIG1pc3NpbmcgZm9yIHNhdGVsZXNzCj4gPiA+ID4gY29kZWMgKEkga25v
dyBpdCdzIHRoZXJlIGZvciBzdGF0ZWZ1bCBidXQgY2FuJ3QgcmVtZW1iZXIsIHdvdWxkIGhhdmUg
dG8gcmUtcmVhZCwKPiA+ID4gPiBmb3Igc3RhdGVsZXNzKSBsZXQgdXMga25vdy4KPiA+ID4KPiA+
ID4gQUZBSUNUIHRoZSBjYXB0dXJlIHNpZGUgaXMgd29ya2luZyBPSyBhbmQgdG8gc3BlYy4KPiA+
ID4KPiA+ID4KPiA+ID4gUmVnYXJkcwo+ID4gPiBDaGVuWXUKPiA+ID4KPiA+ID4gPiByZWdhcmRz
LAo+ID4gPiA+IE5pY29sYXMKPiA+ID4gPgo+ID4gPiA+ID4KPiA+ID4gPiA+IEFuZHJ6ZWosIEkg
YmVsaWV2ZSB0aGUgc2Vjb25kIHBhdGNoIHdvdWxkIGNvbmZsaWN0IHdpdGggeW91ciBWUDkgc2Vy
aWVzLgo+ID4gPiA+ID4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBSZWdhcmRzCj4gPiA+ID4gPiBDaGVu
WXUKPiA+ID4gPiA+Cj4gPiA+ID4gPiBDaGVuLVl1IFRzYWkgKDIpOgo+ID4gPiA+ID4gICBtZWRp
YTogcmt2ZGVjOiBEbyBub3Qgb3ZlcnJpZGUgc2l6ZWltYWdlIGZvciBvdXRwdXQgZm9ybWF0Cj4g
PiA+ID4gPiAgIG1lZGlhOiBya3ZkZWM6IFN1cHBvcnQgZHluYW1pYyByZXNvbHV0aW9uIGNoYW5n
ZXMKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3Zk
ZWMtaDI2NC5jIHwgIDUgKy0tCj4gPiA+ID4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRl
Yy9ya3ZkZWMuYyAgICAgIHwgNDAgKysrKysrKysrKystLS0tLS0tLS0tLQo+ID4gPiA+ID4gIDIg
ZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCj4gPiA+ID4g
Pgo+ID4gPiA+Cj4gPiA+ID4KPiA+Cj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
