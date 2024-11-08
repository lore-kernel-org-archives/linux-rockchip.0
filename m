Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30381D5D69F
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 02:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RThvl47dPS3Dec8iakbUbCyWSDO9fvXczzG8axOcaQ4=; b=rpDaiActf8qJEe
	galoxCuR+LAu8CiLDKouv3M0fWHvQaR7qhxhhmAUvKFItC97LPvhRvzeYDuElaYieg/Bz0S1b2X1D
	3EN9hbWHjq5jp14x08cJCw4nTsBAhvvlscELpzo13hQTCJfT1JC6Jwh3N9BsKENoewzPea6c2B3cG
	IC0sz57lWM4gUJ1Ni3OzzZzESkPBapSV3flWSOl4E4jfo4i7EoPypX1xA1VKdOyiXfqBRG9qVvRE8
	7xbvZWwW3Am3adFwA9R7tclImZxA4SvyZrRtRu/k0lRglWZPEEPc4JJ26hjh8HEaBinJkH0ZDLOnE
	MAC21dxsLDPlIK5N8Lng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Ekn-000000091Yj-44uH;
	Fri, 08 Nov 2024 02:29:41 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Ej3-000000091J0-0miL;
	Fri, 08 Nov 2024 02:27:54 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-4609e784352so10567721cf.0;
        Thu, 07 Nov 2024 18:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731032871; x=1731637671; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mr8eRs4SHjPP0r1sxbAC2kP54V3AaKPgJpNWlRyvXaE=;
        b=WwBA902o0bn7fZPCqxRexHVo1X0nEPoJCToMOdXQ6YkjcEbQidEmR/zptvucWnK9Fu
         xOnFVDPOM7elBpTX7wYDYbApHvub8ENUD7PDqSghg7YtjBNQALyHyQbw56BcQIc5bssC
         dR71KlidcdNI6FVlSMsdx6Y5DVtakDemBl4VgaPNLDl0XLyDidXVd7vT1N07X0mWFoK6
         6PI78z4nmF90e80GPH09jsEylA64yT14xmraEMuMAyezy5RI7MfAvTfWs7vxALCQEnDE
         8/RQFV/pbQ8fONXxldXfyH+mqvMRkgF58cp4jxN1naUwYphu3+3WVNnaVANmt9bsqD8k
         jj6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731032871; x=1731637671;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mr8eRs4SHjPP0r1sxbAC2kP54V3AaKPgJpNWlRyvXaE=;
        b=Z0B/bbpw3+QIRpPAqiB96VyewUj3XmXmJ1V76AXbvhDC+zSh/qc1E/U7naDzZZ56Ci
         cwPREsl70AWc02mnUzAzTMKEzkWeAdYN7JUytrdgWxCxbtTtPvLjNaXllsNmMbSBM47G
         UODV5kg76hgd49YhWQZYgxaa5WjTsb1Tgky2seV1AkF1fegunsAIweXAiP0dYCMWfmiF
         b0i5VlGQfLY1Nn0u9Y6Sfjet+z90pAETq/nRV+AKzx42hmWXwFdgiv4mOYCFXXEHPBHp
         HPKQnfoIoZmJvVCdLkoaAg73w+gz37ToDvSieKAho6GtXE607JCRIKIMJ516fRx4qqqN
         p/zQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2Zg5GiyxCLgZY0JOdbVdZAKkBKGo7BWNyGydc9Rp3LyR773yfOeWtLKE1lHo3X3EjTteHPcryX+gBjbFgi2Y+@lists.infradead.org, AJvYcCVquNxgLxfFciPJuIaMSIe6JvRgvqb5M3oVRaMHcL8UJ1SRUtq4Wwn4YjmjEcE8PAB59sV6A6YU76SPj3oqFYY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxC88dJSyNDghJN4kP5x+21eqGI7CUGjU6xCBa0bi8nNO4MYOKT
	+oDctHnICgnQRAL8iVv+K140qbWWa43NNy/2jQ7HunEsd8Ke1TzoU2DymsN2YHai9bgdDxIDQNN
	ZIl6GacvdFhZ/fjX6zcdOwtant3c=
X-Google-Smtp-Source: AGHT+IGstj8nLMBZdK2Z1wIjI3I7rWSl0VEyifRSPPCGHaKum3jtVpH8xqXOtRxg5JmV/A5VNiW2fozV+dPrbpUNYRE=
X-Received: by 2002:a05:622a:4e8a:b0:456:801c:a20d with SMTP id
 d75a77b69052e-4630930ee2cmr18727101cf.2.1731032871559; Thu, 07 Nov 2024
 18:27:51 -0800 (PST)
MIME-Version: 1.0
References: <20241105161820.32512-1-jiashengjiangcool@gmail.com>
 <20241105161820.32512-3-jiashengjiangcool@gmail.com> <CAD=FV=VzqKa=fo4KRw4FSpPcH4mVnt8jBMo=FMzsGkdGrXCfxg@mail.gmail.com>
 <fj2vssllh7zgl76a4jfakrcngcflwvqxzwwa2dhpkauli2u7wb@pz23fznmy25e>
In-Reply-To: <fj2vssllh7zgl76a4jfakrcngcflwvqxzwwa2dhpkauli2u7wb@pz23fznmy25e>
From: Jiasheng Jiang <jiashengjiangcool@gmail.com>
Date: Thu, 7 Nov 2024 21:27:40 -0500
Message-ID: <CANeGvZX05=ePpV4iG2EAQtdnx1x7xNtmLXWe2iH7ATwChPaQpQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] i2c: rk3x: Add check for clk_enable()
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Doug Anderson <dianders@chromium.org>, rmk@dyn-67.arm.linux.org.uk, 
	max.schwarz@online.de, david.wu@rock-chips.com, heiko@sntech.de, vz@mleia.com, 
	wsa@kernel.org, manabian@gmail.com, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_182753_254582_44E98458 
X-CRM114-Status: GOOD (  30.15  )
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

T24gV2VkLCBOb3YgNiwgMjAyNCBhdCA2OjAx4oCvUE0gQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBr
ZXJuZWwub3JnPiB3cm90ZToKPgo+IEhpIERvdWcsCj4KPiBPbiBUdWUsIE5vdiAwNSwgMjAyNCBh
dCAwMToyOTo0MFBNIC0wODAwLCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+ID4gT24gVHVlLCBOb3Yg
NSwgMjAyNCBhdCA4OjE44oCvQU0gSmlhc2hlbmcgSmlhbmcKPiA+ID4gQWRkIGNoZWNrIGZvciB0
aGUgcmV0dXJuIHZhbHVlIG9mIGNsa19lbmFibGUoKSBpbiBvcmRlciB0byBjYXRjaCB0aGUKPiA+
ID4gcG90ZW50aWFsIGV4Y2VwdGlvbi4gTW9yZW92ZXIsIGNvbnZlcnQgdGhlIHJldHVybiB0eXBl
IG9mCj4gPiA+IHJrM3hfaTJjX2FkYXB0X2RpdigpIGludG8gaW50IGFuZCBhZGQgdGhlIGNoZWNr
Lgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKaWFzaGVuZyBKaWFuZyA8amlhc2hlbmdqaWFu
Z2Nvb2xAZ21haWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gQ2hhbmdlbG9nOgo+ID4gPgo+ID4gPiB2
MSAtPiB2MjoKPiA+ID4KPiA+ID4gMS4gUmVtb3ZlIHRoZSBGaXhlcyB0YWcuCj4gPiA+IDIuIFVz
ZSBkZXZfZXJyX3Byb2JlIHRvIHNpbXBsaWZ5IGVycm9yIGhhbmRsaW5nLgo+ID4gPiAtLS0KPiA+
ID4gIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jIHwgNTEgKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCsp
LCAxNCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBXb3csIHRoaXMgaXMgYSB3aG9sZSBsb3Qgb2YgY29k
ZSB0byBhZGQgdG8gY2hlY2sgZm9yIGFuIGVycm9yIHRoYXQKPiA+IGNhbid0IHJlYWxseSBoYXBw
ZW4gYXMgZmFyIGFzIEknbSBhd2FyZS4gVHVybmluZyBvbiBhIGNsb2NrIGlzIGp1c3QKPiA+IHNv
bWUgTU1JTyB3cml0ZXMgYW5kIGNhbid0IGZhaWwsIHJpZ2h0PyBJcyB0aGlzIHJlYWxseSB3b3J0
aCBpdD8gTWF5YmUKPiA+IGp1c3Qgd3JhcCBjbGtfZW5hYmxlKCkgYW5kIHNwYW0gYW4gZXJyb3Ig
dG8gdGhlIGxvZ3MgaWYgaXQgZmFpbHM/IElmCj4gPiB3ZSBldmVyIHNlZSB0aGF0IGVycm9yIHdl
IGNhbiBmaWd1cmUgb3V0IHdoYXQncyBnb2luZyBvbiBhbmQgaWYKPiA+IHRoZXJlJ3MgYSBzZW5z
aWJsZSByZWFzb24gaXQgY291bGQgZmFpbCB3ZSBjb3VsZCBhZGQgdGhlIG1vcmUgY29tcGxleAo+
ID4gY29kZS4KPgo+IFdlJ3ZlIGhhZCB0aGlzIGRpc2N1c3Npb24gc2V2ZXJhbCB0aW1lcy4gSSdt
IG9mIHRoZSBzY2hvb2wgdGhhdAo+IGlmIGEgZnVuY3Rpb24gY2FuIHJldHVybiBhbiBlcnJvciwg
dGhhdCBlcnJvciBzaG91bGQgYmUgY2hlY2tlZC4KPiBJdCdzIG5vdCBzcGFtLCB3ZSBkbyBpdCBl
dmVyeXdoZXJlLgo+Cj4gT24gdGhlIG90aGVyIGhhbmQsIHRoZXJlIGlzIGFub3RoZXIgc2Nob29s
LCBiaWdnZXIgdGhhbiBtaW5lLAo+IHRoYXQgZG9lc24ndCB3YW50IHN1Y2ggYSBjaGVjay4KPgo+
IEkgZGVjaWRlZCBub3QgdG8gYm90aGVyLiBJZiBzb21lb25lIGFkZHMgdGhlIGNoZWNrLCBJJ20g
Z29pbmcgdG8KPiBhY2NlcHQgaXQuIElmIHNvbWVvbmUgZG9lc24ndCBhZGQgdGhlIGNoZWNrLCBJ
IHdvbid0IGJvdGhlcgo+IGFza2luZyBmb3IgaXQuCj4KPiBTYWlkIHRoYXQsIE1NSU8gcmVhZHMg
YW5kIHdyaXRlcyBjYW4gZmFpbDogaW4gb3RoZXIgZHJpdmVycyBJJ20KPiBzZWVpbmcgYm9ndXMg
cmVhZHMgZHVlIHRvIHNvbWUgZmlybXdhcmUgZmFpbHVyZXMgZHVyaW5nIGRldmljZQo+IHJlc2V0
Lgo+Cj4gSSBhZ3JlZSB3aXRoIHlvdSB3aXRoIHRoZSByZXN0IG9mIHRoZSBjb21tZW50cyBhbmQg
dGhhbmtzIGZvcgo+IGNoZWNraW5nIHRoaXMgb3V0Lgo+Cj4gQW5kaQoKVGhhbmtzLCBJIGhhdmUg
c3VibWl0dGVkIGEgdjMgc2VyaWVzIHRvIGZpeCB0aGVzZSBwcm9ibGVtcy4KCi1KaWFzaGVuZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
