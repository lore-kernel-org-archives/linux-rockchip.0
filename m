Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 391C1E6B243
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Nov 2024 11:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jb5yda26wC7h0zL04nu+IjxienbrH5fofBH4G5v8ObM=; b=aJsH7CyKj4L3/b
	rGShHW0/KB4tJQQLGqlyU0vq+jsWzzdC4kQ+3K9tiVdZ2Yy/yb3DoeoznnvtBtu+zW797oqu8h9qb
	CTqjVew+k/Tfzo2qtsC9G4tssniLhJ2zK2rFeH89oyOvKDuz8wkbuORECvfVqij7baGRGBdm20C/h
	jzizsUDzX3LEsU87GipyAeiKOf3fNauhzcHCEKPJGoKz9lnlBQIbpB3aCtsrnUZJNMFsfl6yHnLS1
	CD5uK7MhCGbjhWttIan9yXHGROpHPtEKyPd3joU3zfJz1xVJorS6z/yQVlB8JZujkPLXqYpht+msS
	Iu2NeAtmRs4y/YFoyW3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6pUa-00000006hKW-2vCB;
	Fri, 01 Nov 2024 11:07:00 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6pSV-00000006gpY-17Q6
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Nov 2024 11:04:53 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-6e9ba45d67fso18423927b3.1
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Nov 2024 04:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730459090; x=1731063890; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RcyVnre0jfOXE57f1aZ6yOpuSdrWU3Uetk6AKG4MKck=;
        b=SVKMJXXfeRYuoiN6w3yDWlRyMjkm2gpn3hTy62y3U+Gt0NHmLLe1wUU+wQd1WYi8qX
         Cl/5EmKOW55iQgX9X6eq5I2Vrr+Dabf1WIG5sqh/158G43vRgMRhMdsBE6B0s7iaRpAt
         owhg+GCONS/F0HSlsR+VsX4mcPGaF1qWmaocI4DH/3Dub41owp8wMVp8SQiRvpife7TU
         q+BhCj1uxIM4Roa9LQE+ixb6N/LobYJRYN7ACbXdeb1Hb95cXxwERy14RKi+/VkW9gDy
         eZcK52yR+RuseOHNuWqw7cLQwxqWFmeehgq4tzSiVGd87AzXbboxdy7ljRmFGjeUW3DM
         ge0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730459090; x=1731063890;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RcyVnre0jfOXE57f1aZ6yOpuSdrWU3Uetk6AKG4MKck=;
        b=QRD3OzQ9N+PGcXCJHjmdnEG0T2W7DX4jwJ0kPRU3GVp9wFvCsORPPw8c8h/fpkn65t
         hqexGfDnNWkwpiAweQsZ4sIUmZFthINQuTWbP5gGa/vhI3CoP94OqaXSgf5dhG9KvKUa
         xkFn698drAhe5JofIUAmGf5kYwA5YAHmV4TY9EyaQMYaSx8263yjRw1tNOYESg+vGM6v
         kHqMHz5i1+U+4dFShezzEIEVEZa6pUt5D19y6Ei41rlCPHZ4VfoptbfUB+sfodPS02Md
         5fGgpYt6HQeNvqKi6H6k8NzuS8pQMYSL6ZWNl8QF4nTVEDHG2IC6Zj1qqW4vb8V3YtZo
         wx0w==
X-Forwarded-Encrypted: i=1; AJvYcCXGA9UBnxMTHtLnwaDkQb3dglGNQgbFQAro05C9pMXM/HQdqoJ+3/d1KoR3r8WspJGfDzVsqOE/PJmcGCDIbw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzdKY94Kr/BCNVFrwnkrznBjWFD7DJYcYsbABJqpNRBDLBMvJ5s
	RlRNGDySif6WAoQySqVWP7vC0pX9jO32B/sUzPsSavLSXmwnPpafwIFFVULUUnjJtt+KxqXhM7X
	GxIyP9F/kbcuJcKZ71Rzw76LXQK6XlMJEf4uYzQ==
X-Google-Smtp-Source: AGHT+IEm0w4Bc6bpa9fFzIh7gFznHA6TyOg1AJUMCvNz0eEXmCXuB9jRIMZyo30oCm1/Jxs53bamqXzVvH4THAHgov4=
X-Received: by 2002:a05:690c:7289:b0:6e5:a78c:5795 with SMTP id
 00721157ae682-6ea3b9a5f4dmr86832957b3.43.1730459089626; Fri, 01 Nov 2024
 04:04:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
 <4920950.GXAFRqVoOG@diego> <CAPDyKFosf_+m9j8YgHa-PsC2SV8+Aou2O6bTbMfzGBpQ2sY8YA@mail.gmail.com>
 <69d06c04-cc8c-4435-a622-33d5dcd1fa24@arm.com> <CAPDyKFoU=AoQqXov_-qFo8xjEbiDAk9mtTtCR9HAYz_gg-bnzQ@mail.gmail.com>
 <eb96b240-f3ee-4057-b016-c746d48cc1b4@rock-chips.com>
In-Reply-To: <eb96b240-f3ee-4057-b016-c746d48cc1b4@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 1 Nov 2024 12:04:13 +0100
Message-ID: <CAPDyKFonhL3JwN1TDrXW-0=VgZowBqTpHsi99GSRmW+aN+4ELQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: dw_mmc: rockchip: Keep controller working for card detect
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Robin Murphy <robin.murphy@arm.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, Jaehoon Chung <jh80.chung@samsung.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_040451_354467_CAFDC11C 
X-CRM114-Status: GOOD (  28.69  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCAxIE5vdiAyMDI0IGF0IDA4OjU5LCBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2st
Y2hpcHMuY29tPiB3cm90ZToKPgo+IEhpIFVsZiwgUm9iaW4sIEhlaWtvLAo+Cj4gT24gMjAyNC8x
MC83IDE3OjQ5LCBVbGYgSGFuc3NvbiB3cm90ZToKPiA+IE9uIEZyaSwgNCBPY3QgMjAyNCBhdCAx
OTozNCwgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4gPj4gT24g
MDIvMTAvMjAyNCAxMDo1NSBwbSwgVWxmIEhhbnNzb24gd3JvdGU6Cj4gPj4+IE9uIFNhdCwgMTQg
U2VwdCAyMDI0IGF0IDEzOjUyLCBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90
ZToKPiA+Pj4+IEFtIERvbm5lcnN0YWcsIDEyLiBTZXB0ZW1iZXIgMjAyNCwgMDk6MjY6MTQgQ0VT
VCBzY2hyaWViIEtldmVyIFlhbmc6Cj4gPj4+Pj4gSW4gb3JkZXIgdG8gbWFrZSB0aGUgU0QgY2Fy
ZCBob3RwbHVnIHdvcmtpbmcgd2UgbmVlZCB0aGUgY2FyZCBkZXRlY3QKPiA+Pj4+PiBmdW5jdGlv
biBsb2dpYyBpbnNpZGUgdGhlIGNvbnRyb2xsZXIgYWx3YXlzIHdvcmtpbmcuIFRoZSBydW50aW1l
IFBNIHdpbGwKPiA+Pj4+PiBnYXRlIHRoZSBjbG9jayBhbmQgdGhlIHBvd2VyIGRvbWFpbiwgd2hp
Y2ggc3RvcHMgY29udHJvbGxlciB3b3JraW5nIHdoZW4KPiA+Pj4+PiBubyBkYXRhIHRyYW5zZmVy
IGhhcHBlbi4KPiA+Pj4+Pgo+ID4+Pj4+IFNvIGxldHMgc2tpcCBlbmFibGUgcnVudGltZSBQTSB3
aGVuIHRoZSBjYXJkIG5lZWRzIHRvIGRldGVjdGVkIGJ5IHRoZQo+ID4+Pj4+IGNvbnRyb2xsZXIg
YW5kIHRoZSBjYXJkIGlzIHJlbW92YWJsZS4KPiA+Pj4+Pgo+ID4+Pj4+IFNpZ25lZC1vZmYtYnk6
IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+Cj4gPj4+PiBTbyBmb3IgdGhl
IGNoYW5nZSBpdHNlbGYgdGhpcyBsb29rcyBnb29kLCBpLmUuIGl0IGZpeGVzIGFuIGlzc3VlIGZv
ciBiYW9yZHMgcmVseWluZwo+ID4+Pj4gb24gdGhlIG9uLWNoaXAtY2FyZC1kZXRlY3QuCj4gPj4+
Pgo+ID4+Pj4KPiA+Pj4+IEJ1dCBmb3IgYm9hcmRzIGRvaW5nIHRoYXQsIHRoZSBjb250cm9sbGVy
IHdpbGwgYmUgcnVubmluZyBfYWxsIHRoZSB0aW1lXwo+ID4+Pj4gZXZlbiBpZiB0aGVyZSBpcyBu
ZXZlciBhbnkgY2FyZCBpbnNlcnRlZC4KPiA+Pj4+Cj4gPj4+PiBTbyByZWx5aW5nIG9uIHRoZSBv
bi1zb2MgY2FyZC1kZXRlY3Qgd2lsbCBlZmZlY3RpdmVseSBpbmNyZWFzZSB0aGUgcG93ZXItCj4g
Pj4+PiBjb25zdW1wdGlvbiBvZiB0aGUgYm9hcmQgLSBldmVuIGl0IGl0J2xsIG5ldmVyIHVzZSBh
bnkgc2QtY2FyZD8KPiBZZXMsIHRoaXMgaXMgaG93IHRoZSBjb250cm9sbGVyIHdvcmtzLCB0aGUg
Y29udHJvbGxlciBuZWVkcyB0aGUgY2xvY2sgdG8KPiBtYWtlIHRoZSBkZXRlY3QgbG9naWMgd29y
ay4KPiBJZiB3ZSB1c2UgZ3BpbyB0byBpbXBsZW1lbnQgdGhpcyBjYXJkLWRldGVjdCwgaXQgd29y
a3MgYmVjYXVzZSB0aGUgR1BJTwo+IGNvbnRyb2xsZXIvY2xvY2sga2VlcHMgd29ya2luZy4KClJp
Z2h0LiBPbiBlbWJlZGRlZCBiYXR0ZXJ5IGRyaXZlbiBwbGF0Zm9ybXMgaXQncyBxdWl0ZSBjb21t
b24gdGhhdAp0aGVyZSBpcyBzb21lIGFsd2F5cy1vbiBsb2dpYyAobWF5YmUgdmlhIGEgUE1JQykg
dGhhdCBoZWxwcyB0byB0YWtlCmNhcmUgb2YgdGhlc2UgR1BJTyBpcnFzLgoKPiBGb3IgdGhlIGR3
X21tYyBkcml2ZXIgc3VwcG9ydCwgd2Ugc2hvdWxkIHN1cHBvcnQgYm90aCBraW5kIG9mIGltcGxl
bWVudAo+IGR1ZSB0byB0aGUgY29udHJvbGxlciBoYXMgdGhpcyBmdW5jdGlvbiwKPiBzbyB0aGlz
IHBhdGNoIGlzIGZvciB0aGUgY2FyZC1kZXRlY3QgaW1wbGVtZW50IGJ5IHRoZSBkd21tYyBjb250
cm9sbGVyLAo+IHRoZSBjb250cm9sbGVyIG5lZWQgdG8ga2VlcCB3b3JraW5nCj4gLSBvbmx5IGZv
ciBzZC1jYXJkIChzbyBub3QgaW5jbHVkZSB0aGUgIm5vbi1yZW1vdmFibGUgIiBkZXZpY2UpCj4g
LSBhbHNvIG5vdCBkaXNhYmxlIHJwbSB3aGVuICJjZC1ncGlvcyIgaXMgdXNlZC4KPgo+IEZvciB0
aGUgcG93ZXIgY29uc3VtcHRpb24sIEkgYmVsaWV2ZSBpdCB3aWxsIGluY3JlYXNlLCBidXQgdmVy
eSB2ZXJ5Cj4gc21hbGwsIHdlIGNhbid0IGV2ZW4gbW9uaXRvciB0aGUgY2hhbmdlCgpSaWdodCwg
dGhhdCBtYXkgYmUgcGVyZmVjdGx5IGNvcnJlY3Qgb24gdGhlIHBsYXRmb3JtIHlvdSBhcmUgdXNp
bmcuIE9uCm90aGVycyBpdCBtYXkgbm90LgoKSW4gZ2VuZXJhbCwgaXQncyBhIGJhZCBpZGVhIHRv
IGtlZXAgZGV2aWNlcyBydW50aW1lIHJlc3VtZWQsIHVubGVzcyB3ZQpyZWFsbHkgaGF2ZSB0b28u
IEluIHBhcnRpY3VsYXIgd2hlbiB0aGUgYXJlIHNoYXJlZCBwb3dlci1yYWlscyBiZWluZwptYW5h
Z2VkIGJ5IGEgcG93ZXItZG9tYWluLCBmb3IgZXhhbXBsZS4KCj4gaWYgd2UgdXNlIHRoZSBub3Jt
YWwgZXF1aXBtZW50LiBUaGUgZHJpdmVyIHNob3VsZCBtYWtlIGZ1bmN0aW9uIHdvcmtzCj4gZmly
c3QsIGFuZCB0aGVuIGNvbnNpZGVyIHRoZSBwb3dlci4KPgo+IFRoaXMgcGF0Y2ggaXMgdG8gbWFr
ZSB0aGUgZHdtbWMgZnVuY3Rpb24gd29ya3Mgd2l0aG91dCBncGlvJ3MgaGVscCBpbgo+IGR3bW1j
IGRyaXZlciwKPiAgIGFuZCBoYXMgbm8gYWZmZWN0IHRvIHRoZSBncGlvIG9wdGlvbiwgcGVvcGxl
IHN0aWxsIGFibGUgdG8gdXNlIGdwaW8gdG8KPiBkbyB0aGUgY2QuCj4KCkkgdW5kZXJzdGFuZCBh
bmQgeW91IGNlcnRhaW5seSBoYXZlIGEgcG9pbnQuCgpIb3dldmVyLCBpdCBzb3VuZHMgbGlrZSB5
b3UgdGhpbmsgdGhlcmUgaXMgYSBkcmF3YmFjayBpbnZvbHZlZCB0byB1c2UKTU1DX0NBUF9ORUVE
U19QT0xMIGluIHRoaXMgY2FzZT8gSW4gdGhhdCBjYXNlLCBjYW4geW91IHBsZWFzZQplbGFib3Jh
dGUgd2h5IHByZXZlbnRpbmcgcnVudGltZSBzdXNwZW5kIHdvdWxkIGJlIGJldHRlcj8KClsuLi5d
CgpLaW5kIHJlZ2FyZHMKVWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
