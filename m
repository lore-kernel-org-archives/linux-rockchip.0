Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 749D6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 08:27:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43B4760F23
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 08:27:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 43B4760F23
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SN4hqeGJRsvPJBDLaTqtUszoZpdDz7cvHi1CTuH3Zz4=; b=uirVxG6wTEDsxj
	w0Fl8j2YDKuR8C2bKiDQcRC703pEYMtEH0r4HV7qdGScBYB4h2zVe8pX6d12xJ9Os1MzTO2UWahCn
	kCRMtibqyPk8vWiObwVGYHWWAa1AAHzw6M8n2RY4gAyii0bS3TwXmB/rOUep3mDTS3u+JYYXG3adr
	G36zYcEX+humin+pfp+kugR6t++kDvEG/mOzRuuuINflbxYAGkoPINXVTB+K0uckCw7k3divgD3JJ
	XWd1IwpVekNk1FDvo+2bWAcXG6KVz38D2JigKbvi9NFZxHLyvPZOkDmZK40KxKkdTz4mfElCMhb8I
	SOE8/hbptxcbSc5TUkYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maZby-00FZGd-RF; Wed, 13 Oct 2021 08:27:42 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maYKK-00FGXB-Jc
 for linux-rockchip@lists.infradead.org; Wed, 13 Oct 2021 07:05:26 +0000
Received: by mail-lf1-x12c.google.com with SMTP id c16so7452391lfb.3
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Oct 2021 00:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PfnVX7fs5mOAIg5g0IqUeD9+3NCJp4mY90XboBsyTc0=;
 b=PJn70qZ0of/CLO+ZxZI67bYUqZTq5pvu4J69Nxw34dbToC6iLbo2ubHihqjbU+KWvU
 jT02ga161bl+/F27IiyaK0qLauaVLgIhgN5hOmgGgxjZ+XoUH49428zf2pNFYPHFfaCR
 bplSjSXtd3xozXnXz7wtrKc5ZFxoqxM+9OoRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PfnVX7fs5mOAIg5g0IqUeD9+3NCJp4mY90XboBsyTc0=;
 b=ejXPwfJH/VUHZTGvXkDgtepWcBCSjhX87JGp98s5iJl2AZOdCiJrJYM8uBzFV+Z1PL
 oUzyRS2TADh6+j3OALuLUeVgGshDWjCHfk3qnaSXaKCSTWH755sz1BqB4eWzfT9IPXGN
 v+nPw+eceW7zsU8Y9+DGgLo6vV5H/NvTfz/spqL//6Vf8OWvNN2qNopRwIrXdIBq/IjV
 NJb2S41kfJv7XWCEP37jQ3VLYtWzxik+/ScZwhHSfbnU+zvcq6eJk5oM8x9OSF7WL8bN
 Z/omc4RaitKHbkVaPm5ZHrXldFUMsqPVc1cG0dEP4JDNT2FX5yo6Efm56E3YEAfrd0Ax
 RdlQ==
X-Gm-Message-State: AOAM531abqZBPUKQW8/iMzzql7Bey1PICRUImYMhrvYB02VovxuQUYYB
 fqvPA0cgNbL3MKg0bY4lNO1D5aNl0gpa2H56WCdaag==
X-Google-Smtp-Source: ABdhPJxYjLoBprzSyIXGzP7xjmn68PtGM7ruxdJkHX33kuYTv8KEpFlP6xZXAhM7paKE8nSoUpMNEuk3fyQqHBpe0pM=
X-Received: by 2002:ac2:4e07:: with SMTP id e7mr1074589lfr.308.1634108722948; 
 Wed, 13 Oct 2021 00:05:22 -0700 (PDT)
MIME-Version: 1.0
References: <20211008100423.739462-1-wenst@chromium.org>
 <f108f23dadc846222c63c88af826dae9c5082d83.camel@ndufresne.ca>
In-Reply-To: <f108f23dadc846222c63c88af826dae9c5082d83.camel@ndufresne.ca>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 13 Oct 2021 15:05:11 +0800
Message-ID: <CAGXv+5FnFq1mN79sqUp-o6pHirYvp55gurnsUCgqYvEAX2=4oQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] media: rkvdec: Align decoder behavior with Hantro and
 Cedrus
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-staging@lists.linux.dev, LKML <linux-kernel@vger.kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_000524_721622_AAC2680B 
X-CRM114-Status: GOOD (  34.22  )
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

SGksCgpPbiBGcmksIE9jdCA4LCAyMDIxIGF0IDExOjQyIFBNIE5pY29sYXMgRHVmcmVzbmUgPG5p
Y29sYXNAbmR1ZnJlc25lLmNhPiB3cm90ZToKPgo+IEhpIENoZW4tWXUsCj4KPiB0aGFua3MgZm9y
IGxvb2tpbmcgaW50byB0aGlzLgo+Cj4gTGUgdmVuZHJlZGkgMDggb2N0b2JyZSAyMDIxIMOgIDE4
OjA0ICswODAwLCBDaGVuLVl1IFRzYWkgYSDDqWNyaXQgOgo+ID4gSGkgZXZlcnlvbmUsCj4gPgo+
ID4gV2hpbGUgd29ya2luZyBvbiB0aGUgcmt2ZGVjIEguMjY0IGRlY29kZXIgZm9yIENocm9tZU9T
LCBJIG5vdGljZWQgc29tZQo+ID4gYmVoYXZpb3JhbCBkaWZmZXJlbmNlcyBjb21wYXJlZCB0byBI
YW50cm8gYW5kIENlZHJ1czoKPiA+Cj4gPiAxLiBUaGUgZHJpdmVyIGFsd2F5cyBvdmVycmlkZXMg
dGhlIHNpemVpbWFnZSBzZXR0aW5nIGdpdmVuIGJ5IHVzZXJzcGFjZQo+ID4gICAgZm9yIHRoZSBv
dXRwdXQgZm9ybWF0LiBUaGlzIHJlc3VsdHMgaW4gaW5zdWZmaWNpZW50IGJ1ZmZlciBzcGFjZSB3
aGVuCj4gPiAgICBydW5uaW5nIHRoZSBDaHJvbWVPUyB2aWRlb19kZWNvZGVfYWNjZWxlcmF0b3Jf
dGVzdHMgdGVzdCBwcm9ncmFtLAo+ID4gICAgbGlrZWx5IGR1ZSB0byBhIHNtYWxsIGluaXRpYWwg
cmVzb2x1dGlvbiBmb2xsb3dlZCBieSBkeW5hbWljCj4gPiAgICByZXNvbHV0aW9uIGNoYW5nZS4K
PiA+Cj4gPiAyLiBEb2Vzbid0IHN1cHBvcnQgZHluYW1pYyByZXNvbHV0aW9uIGNoYW5nZS4KPiA+
Cj4gPiBUaGlzIHNtYWxsIHNlcmllcyBmaXhlcyBib3RoIGFuZCBhbGlnbnMgdGhlIGJlaGF2aW9y
IHdpdGggdGhlIG90aGVyIHR3bwo+ID4gc3RhdGVsZXNzIGRlY29kZXIgZHJpdmVycy4gVGhpcyB3
YXMgdGVzdGVkIG9uIHRoZSBkb3duc3RyZWFtIENocm9tZU9TCj4gPiA1LjEwIGtlcm5lbCB3aXRo
IENocm9tZU9TLiBBbHNvIGNvbXBpbGVkIHRlc3RlZCBvbiBtYWlubGluZSBidXQgSSBkb24ndAo+
ID4gaGF2ZSBhbnkgb3RoZXIgUkszMzk5IGRldmljZXMgc2V0IHVwIHRvIHRlc3QgdmlkZW8gc3R1
ZmYsIHNvIHRlc3RpbmcKPiA+IHdvdWxkIGJlIHZlcnkgbXVjaCBhcHByZWNpYXRlZC4KPiA+Cj4g
PiBBbHNvLCBJJ20gbm90IHN1cmUgaWYgdXNlciBhcHBsaWNhdGlvbnMgYXJlIHJlcXVpcmVkIHRv
IGNoZWNrIHRoZSB2YWx1ZQo+ID4gb2Ygc2l6ZWltYWdlIHVwb24gU19GTVQgcmV0dXJuLiBJZiB0
aGUgdmFsdWUgaXMgZGlmZmVyZW50IG9yIHRvbyBzbWFsbCwKPiA+IHdoYXQgY2FuIHRoZSBhcHBs
aWNhdGlvbiBkbyBiZXNpZGVzIGZhaWw/IEFGQUlDVCBpdCBjYW4ndCBzcGxpdCB0aGUKPiA+IGRh
dGEgb2Ygb25lIGZyYW1lIChvciBzbGljZSkgYmV0d2VlbiBkaWZmZXJlbnQgYnVmZmVycy4KPgo+
IFdoaWxlIG1vc3Qgc29mdHdhcmUgb3V0IHRoZXJlIGp1c3QgYXNzdW1lcyB0aGF0IGRyaXZlciB3
aWxsIGRvIGl0IHJpZ2h0IGFuZAo+IGNyYXNoIHdoZW4gaXQncyBub3QgdGhlIGNhc2UsIGFwcGxp
Y2F0aW9uIHRoYXQgZG8gbWFwIHRoZSBidWZmZXIgdG8gQ1BVIG11c3QKPiByZWFkIGJhY2sgdGhl
IGZtdCBzdHJ1Y3R1cmUgYXMgdGhlIGRyaXZlcnMgYXJlIGFsbCBmYWlsLXNhZmUgYW5kIHdpbGwg
bW9kaWZ5Cj4gdGhhdCBzdHJ1Y3R1cmUgdG8gYSBzZXQgb2YgdmFsaWQgdmFsdWUgcyBmb3IgdGhl
IGNvbnRleHQuCgpJIGJlbGlldmUgd2hhdCBpcyBoYXBwZW5pbmcgaW4gQ2hyb21pdW0gaXMgdGhh
dCB0aGUgZGVjb2RlciBpcyBvcGVuZWQgd2l0aApzb21lIGRlZmF1bHQgc2V0dGluZ3MsIGluY2x1
ZGluZyB0aGUgc21hbGxlc3QgdmlhYmxlIHJlc29sdXRpb24gZm9yIHRoZQpvdXRwdXQgc2lkZSwg
YW5kIHRoZSBidWZmZXJzIGFsbG9jYXRlZCBhY2NvcmRpbmdseS4gV2hlbiBkeW5hbWljIHJlc29s
dXRpb24KY2hhbmdlIGhhcHBlbnMsIHRoZSBkZWNvZGVyIGRvZXMgbm90IGNoZWNrIGlmIHRoZSBj
dXJyZW50IGJ1ZmZlcnMgYXJlCnN1ZmZpY2llbnRseSBzaXplZDsgaXQganVzdCBhc3N1bWVzIHRo
YXQgdGhleSBhcmUuIEFuZCB3aGVuIGl0IHN0YXJ0cwpwdXNoaW5nIGRhdGEgaW50byB0aGUgYnVm
ZmVycywgaXQgcmVhbGl6ZXMgdGhleSBhcmUgdG9vIHNtYWxsIGFuZCBmYWlscy4KClRoZSBzcGVj
IGFsc28gc2F5czoKCiAgICBDbGllbnRzIGFyZSBhbGxvd2VkIHRvIHNldCB0aGUgc2l6ZWltYWdl
IGZpZWxkIGZvciB2YXJpYWJsZSBsZW5ndGgKICAgIGNvbXByZXNzZWQgZGF0YSBmbGFnZ2VkIHdp
dGggVjRMMl9GTVRfRkxBR19DT01QUkVTU0VEIGF0IGlvY3RsCiAgICBWSURJT0NfRU5VTV9GTVQs
IGJ1dCB0aGUgZHJpdmVyIG1heSBpZ25vcmUgaXQgYW5kIHNldCB0aGUgdmFsdWUgaXRzZWxmLAog
ICAgb3IgaXQgbWF5IG1vZGlmeSB0aGUgcHJvdmlkZWQgdmFsdWUgYmFzZWQgb24gYWxpZ25tZW50
IHJlcXVpcmVtZW50cyBvcgogICAgbWluaW11bS9tYXhpbXVtIHNpemUgcmVxdWlyZW1lbnRzLgoK
VGhlIHNwZWMgb25seSBndWFyYW50ZWVzIHRoYXQgdGhlIGJ1ZmZlcnMgYXJlIG9mIHN1ZmZpY2ll
bnQgc2l6ZSBmb3IgdGhlCnJlc29sdXRpb24gY29uZmlndXJlZCBhdCB0aGUgdGltZSB0aGV5IHdl
cmUgYWxsb2NhdGVkL3JlcXVlc3RlZC4KClNvIEkgdGhpbmsgbXkgZmlyc3QgcGF0Y2ggaXMgYSB3
b3JrYXJvdW5kIGZvciBhIHNvbWV3aGF0IGJyb2tlbiB1c2Vyc3BhY2UuCkJ1dCBpdCBzZWVtcyB0
aGUgb3RoZXIgc3RhdGVsZXNzIGRyaXZlcnMgYXJlIHByb3ZpZGluZyBzaW1pbGFyIGJlaGF2aW9y
LAphcyBJIHByZXZpb3VzbHkgbWVudGlvbmVkLgoKPiBBcyBmb3Igb3Bwb3NpdGUgZGlyZWN0aW9u
IChvdXRwdXQgdnMgY2FwdHVyZSkgZm9ybWF0IGJlaW5nIGNoYW5nZWQsIHRoaXMgc2hvdWxkCj4g
YmUgZG9jdW1lbnRlZCBpbiB0aGUgc3BlYywgaWYgeW91IGZpbmQgaXQgdG9vIHVuY2xlYXIgb3Ig
bWlzc2luZyBmb3Igc2F0ZWxlc3MKPiBjb2RlYyAoSSBrbm93IGl0J3MgdGhlcmUgZm9yIHN0YXRl
ZnVsIGJ1dCBjYW4ndCByZW1lbWJlciwgd291bGQgaGF2ZSB0byByZS1yZWFkLAo+IGZvciBzdGF0
ZWxlc3MpIGxldCB1cyBrbm93LgoKQUZBSUNUIHRoZSBjYXB0dXJlIHNpZGUgaXMgd29ya2luZyBP
SyBhbmQgdG8gc3BlYy4KCgpSZWdhcmRzCkNoZW5ZdQoKPiByZWdhcmRzLAo+IE5pY29sYXMKPgo+
ID4KPiA+IEFuZHJ6ZWosIEkgYmVsaWV2ZSB0aGUgc2Vjb25kIHBhdGNoIHdvdWxkIGNvbmZsaWN0
IHdpdGggeW91ciBWUDkgc2VyaWVzLgo+ID4KPiA+Cj4gPiBSZWdhcmRzCj4gPiBDaGVuWXUKPiA+
Cj4gPiBDaGVuLVl1IFRzYWkgKDIpOgo+ID4gICBtZWRpYTogcmt2ZGVjOiBEbyBub3Qgb3ZlcnJp
ZGUgc2l6ZWltYWdlIGZvciBvdXRwdXQgZm9ybWF0Cj4gPiAgIG1lZGlhOiBya3ZkZWM6IFN1cHBv
cnQgZHluYW1pYyByZXNvbHV0aW9uIGNoYW5nZXMKPiA+Cj4gPiAgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jIHwgIDUgKy0tCj4gPiAgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3JrdmRlYy9ya3ZkZWMuYyAgICAgIHwgNDAgKysrKysrKysrKystLS0tLS0tLS0tLQo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCj4gPgo+
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
