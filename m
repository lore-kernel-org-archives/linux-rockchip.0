Return-Path: <SRS0=4of/=MZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2ED9C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Aug 2021 18:25:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B63F560F4B
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Aug 2021 18:25:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B63F560F4B
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=google.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3tF1sPYpWlJdyqt7ysd/NaD7PR88vDkUYzkVfI2dAY=; b=uzNWGfiVBEK78m
	/A4IlTtGr4iYb5e9F9Ra73+vE9G6yDtHggDExuuJvV6JKzJAMaTsZD5tcDf53oHcNcySJ0LGZX0nd
	llR7opqhCv0uFNSVtaHobKmJg+7xnWSgO7mAfcQ+Z1ZNfBKGDVNDbU6l5RjplwGKeFocK4EWDvy66
	zwx+H3AcnMXqDDI+H0l7ICxhbfi9Yyr0c+RyEtezCjIigIF0YJNwzYmfMtZzE9Vu8DvVwb2QkjBE9
	o8BTugO+SO9N8Bn1wWFhVKVfB69IKkmY1s+jhnHXDnjIl2J7Wy0R1hmb2ayIgVUr0WL4o6MOdfdgo
	z6VN0qGgsfb7ZE/qBvBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAcdG-00HV9k-Hs; Mon, 02 Aug 2021 18:25:46 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAcd7-00HV7B-L9
 for linux-rockchip@lists.infradead.org; Mon, 02 Aug 2021 18:25:39 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id w17so29864277ybl.11
 for <linux-rockchip@lists.infradead.org>; Mon, 02 Aug 2021 11:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rgyhSNBwjVthGes2RpVRtUuo2LAriKbUmW6hz5Qrd9g=;
 b=gaQkvuDdgBKlEs/PlVOGa5TvgBNYLqsuhBXb7qPQEWqwFw0fxDTevKR0X3fI29/nh0
 SC+Os2urDnjCdcEGHBHLP05n6tYnRfqqQSiTELHjJZMT8HFgIlbfXJL/53kmi4GidZ+3
 J24lKZiFMjscgFzpGci1rlpIUATL2IItj32Bg4MFfn8khqb6ETjh6I+hGvdVaQTEnF9+
 yqwo3hq0MsMpQUaV+2/Hwly4fJ0T16kKOSfajcTOgbPgbBd6BGw0LQwWWJYy1//zQViQ
 fLN3mhVGs4nmX9S3tQ0VF18jo7XhdJs5aho1JTnxuk/g0JIMj/N526STboFf/5mKvEx2
 sRTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rgyhSNBwjVthGes2RpVRtUuo2LAriKbUmW6hz5Qrd9g=;
 b=TXAEmqTJy+0RBMNavtCzLYkvv45+HIeBweICbXMv9OgYrqNuLKIo4ds24mtucomO2H
 HvnSkCPnUyczvkoJvsAIEni2D9ifCk2Bw5xzIhWndmMOd4Fm0cypC1IBgiUHJAZ/Vzaf
 ylnzjrBAXibfh50dQ7YWI2lrX1mGdl3/lJQm7IB5XOgYPKj7MV49eBAC/8BIKyviKBi3
 KrjJzx0wsKuowkoLGziLk+IKNhJ2gnCvUsArZXitruQ+QlmbMYBkrxdfvOVkTGu7iAEU
 4ssyDr0EhHu5Iu2M0o/qEDgmGYK/CVXu+xH5OivXDbHKTQr1o64qw65XiePwaxtBEUzu
 w2HQ==
X-Gm-Message-State: AOAM533k25QPtc3VI/kaytYDroUWV2dUZeBbMQkiPx2xJ+PpWhah4q7c
 FAvGiHIuJsuFRUBcjgWpXxSiqUf+kgK6pBH0apTY4Q==
X-Google-Smtp-Source: ABdhPJwb8GQepycTGtRZVWRW/lbjOjz53+1MJjH4bGCrQdaw9Iwp2WHacVzvngEPy1NIM59b1otMYQBEG/RUVQrwYNY=
X-Received: by 2002:a25:53c9:: with SMTP id
 h192mr21521085ybb.310.1627928732246; 
 Mon, 02 Aug 2021 11:25:32 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>
 <162734809017.2368309.7901135942001140161@swboyd.mtv.corp.google.com>
 <2634451.ElGaqSPkdT@diego>
 <162758560739.714452.5782743329332725952@swboyd.mtv.corp.google.com>
In-Reply-To: <162758560739.714452.5782743329332725952@swboyd.mtv.corp.google.com>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 2 Aug 2021 11:24:56 -0700
Message-ID: <CAGETcx8YYrkCV0UObtOqHUnS29Q-raC54KUh14wqyBDMJ4e46g@mail.gmail.com>
Subject: Re: [PATCH] clk: rk3308: make ddrphy4x clock critical
To: Stephen Boyd <sboyd@kernel.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Yunhao Tian <t123yh@outlook.com>, t123yh.xyz@gmail.com, 
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_112537_781638_283C2B07 
X-CRM114-Status: GOOD (  34.31  )
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

T24gVGh1LCBKdWwgMjksIDIwMjEgYXQgMTI6MDYgUE0gU3RlcGhlbiBCb3lkIDxzYm95ZEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IFF1b3RpbmcgSGVpa28gU3TDvGJuZXIgKDIwMjEtMDctMjggMDI6
NTM6NTQpCj4gPiBBbSBEaWVuc3RhZywgMjcuIEp1bGkgMjAyMSwgMDM6MDg6MTAgQ0VTVCBzY2hy
aWViIFN0ZXBoZW4gQm95ZDoKPiA+ID4gUXVvdGluZyBZdW5oYW8gVGlhbiAoMjAyMS0wNy0yMSAw
NTo0ODoxNikKPiA+ID4gPiBDdXJyZW50bHksIG5vIGRyaXZlciBzdXBwb3J0IGZvciBERFIgbWVt
b3J5IGNvbnRyb2xsZXIgKERNQykgaXMgcHJlc2VudCwKPiA+ID4gPiBhcyBhIHJlc3VsdCwgbm8g
ZHJpdmVyIGlzIGV4cGxpY2l0bHkgY29uc3VtaW5nIHRoZSBkZHJwaHkgY2xvY2suIFRoaXMgbWVh
bnMKPiA+ID4gPiB0aGF0IFZQTEwxIChwYXJlbnQgb2YgZGRyIGNsb2NrKSB3aWxsIGJlIHNodXRk
b3duIGlmIHdlIGVuYWJsZQo+ID4gPiA+IGFuZCB0aGVuIGRpc2FibGUgYW55IGNoaWxkIGNsb2Nr
IG9mIFZQTEwxIChlLmcuIFNDTEtfSTJTMF84Q0hfVFgpLgo+ID4gPiA+IElmIFZQTEwxIGlzIGRp
c2FibGVkLCB0aGUgd2hvbGUgc3lzdGVtIHdpbGwgZnJlZXplLCBiZWNhdXNlIHRoZSBERFIKPiA+
ID4gPiBjb250cm9sbGVyIHdpbGwgbG9zZSBpdHMgY2xvY2suIFNvLCBpdCdzIG5lY2Vzc2FyeSB0
byBwcmV2ZW50IFZQTEwxIGZyb20KPiA+ID4gPiBzaHV0dGluZyBkb3duLCBieSBtYXJraW5nIHRo
ZSBkZHJwaHk0eCBDTEtfSVNfQ1JJVElDQUwuCj4gPiA+ID4KPiA+ID4gPiBUaGlzIGJ1ZyB3YXMg
ZGlzY292ZXJlZCB3aGVuIEkgd2FzIHBvcnRpbmcgcm9ja2NoaXBfaTJzX3RkbSBkcml2ZXIgdG8K
PiA+ID4gPiBtYWlubGluZSBrZXJuZWwgZnJvbSBSb2NrY2hpcCA0LjQga2VybmVsLiBJIGd1ZXNz
IHRoYXQgb3RoZXIgUm9ja2NoaXAKPiA+ID4gPiBTb0NzIHdpdGhvdXQgRE1DIGRyaXZlciBtYXkg
bmVlZCB0aGUgc2FtZSBwYXRjaC4gSWYgdGhpcyBhcHBsaWVzIHRvCj4gPiA+ID4gb3RoZXIgZGV2
aWNlcywgcGxlYXNlIGxldCB1cyBrbm93Lgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
WXVuaGFvIFRpYW4gPHQxMjN5aEBvdXRsb29rLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgZHJp
dmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzMwOC5jIHwgMiArLQo+ID4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPgo+ID4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzA4LmMgYi9kcml2ZXJzL2Nsay9y
b2NrY2hpcC9jbGstcmszMzA4LmMKPiA+ID4gPiBpbmRleCAyYzNiZDBjNzQ5ZjIuLjZiZTA3NzE2
NjMzMCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzA4
LmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzA4LmMKPiA+ID4g
PiBAQCAtNTY0LDcgKzU2NCw3IEBAIHN0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX2JyYW5jaCBy
azMzMDhfY2xrX2JyYW5jaGVzW10gX19pbml0ZGF0YSA9IHsKPiA+ID4gPiAgICAgICAgIENPTVBP
U0lURShTQ0xLX0REUkNMSywgImNsa19kZHJwaHk0eF9zcmMiLCBtdXhfZHBsbF92cGxsMF92cGxs
MV9wLCBDTEtfSUdOT1JFX1VOVVNFRCwKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBS
SzMzMDhfQ0xLU0VMX0NPTigxKSwgNiwgMiwgTUZMQUdTLCAwLCAzLCBERkxBR1MsCj4gPiA+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgUkszMzA4X0NMS0dBVEVfQ09OKDApLCAxMCwgR0ZMQUdT
KSwKPiA+ID4gPiAtICAgICAgIEdBVEUoMCwgImNsa19kZHJwaHk0eCIsICJjbGtfZGRycGh5NHhf
c3JjIiwgQ0xLX0lHTk9SRV9VTlVTRUQsCj4gPiA+ID4gKyAgICAgICBHQVRFKDAsICJjbGtfZGRy
cGh5NHgiLCAiY2xrX2RkcnBoeTR4X3NyYyIsIENMS19JR05PUkVfVU5VU0VEIHwgQ0xLX0lTX0NS
SVRJQ0FMLAo+ID4gPgo+ID4gPiBJcyBpdCBub3QgZW5hYmxlZCBieSBkZWZhdWx0Pwo+ID4KPiA+
IEFsbCBnYXRlcyBhcmUgZW5hYmxlZCBieSBkZWZhdWx0LCBidXQgdGhpcyBnYXRlIHNoYXJlcyBh
IGNvbW1vbiBwYXJlbnQKPiA+IHRyZWUgZG93biB0byBhIHBsbCwgc28gaWYgYW5vdGhlciBsZWFm
LXVzZXIgaXMgZGlzYWJsaW5nIHRoZWlyIHBhcnQsIHRoaXMKPiA+IHVudHJhY2tlZCBjbG9jayB3
b3VsZCBnZXQgZGlzYWJsZWQgYXMgd2VsbC4KPgo+IFJpZ2h0LCB0aGlzIHByb2JsZW0gaXMgY3Jv
cHBpbmcgdXAgaW4gZGlmZmVyZW50IHBsYWNlcyBmb3IgdmFyaW91cwo+IGRyaXZlcnMuCj4KPiA+
Cj4gPiBPbiB0aGF0IG5vdGUsIEkgcmVtZW1iZXIgYSBzb3J0IG9mIENMS19IQU5ET0ZGIHdhcyBw
bGFubmVkIHdheSBiYWNrCj4gPiBpbiB0aGUgcGFzdCwgbWVhbmluZyBjbG9jayBpcyBjcml0aWNh
bCB1bnRpbCBhIGRyaXZlciBwaWNrcyBpdCB1cCwgYWZ0ZXIgdGhpcyB0aGUKPiA+IGRyaXZlciBp
cyByZXNwb25zaWJsZSBmb3IgaXQuIERpZCB0aGF0IGdldCBhbnkgbW9tZW50dW0/Cj4gPgo+Cj4g
TGFzdCBJIHNhdyBTYXJhdmFuYSBzZW50IGEgcGF0Y2ggdG8gc29ydCBvZiBjb25uZWN0IENMS19I
QU5ET0ZGIHRvCj4gZGV2aWNlIGRyaXZlciBzeW5jX3N0YXRlKCkgY2FsbGJhY2suIEkgdGhpbmsg
d2UgbmVlZCB0byBhdCBsZWFzdCBzdGFzaAo+IGF3YXkgdGhhdCBhIGNsayBpcyBlbmFibGVkIGF0
IGJvb3QgYW5kIHRoZW4gZmlndXJlIG91dCBob3cgdG8gdGllIGluCj4gc3luY19zdGF0ZSBhbmQv
b3Igc29tZXRoaW5nIGVsc2UuCgpZZWFoLCBteSBjbGtfc3luY19zdGF0ZSgpIHNlcmllcyBzaG91
bGQgZG8gdGhhdC4gSSdsbCBnZXQgYmFjayBvbiB0aGF0CnBhdGNoIHRoaXMgd2VlayBvciBuZXh0
LgoKWXVuaGFvLAoKSXMgdGhlcmUgYXQgbGVhc3Qgc29tZSBEVCBkZXZpY2UgdGhhdCBjb25zdW1l
cyB0aGUgRERSIHBoeSBjbG9jaz8gQ2FuCnlvdSBwb2ludCBtZSB0byB0aGUgRFQgZm9yIHRoaXMg
Ym9hcmQgKG5vdCB0aGUgU29DKSBzbyBJIGNhbiB0YWtlIGEKbG9vayBhdCBpdCBsYXRlcj8KClRo
YW5rcywKU2FyYXZhbmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
