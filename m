Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5944C5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 13:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRSxNPGyFLcCQiIEEeCxo+34JZ8/jKTnw+n5nzn9+GA=; b=HiUcbMqzefbErp
	o2mHPkSPjXrna0tTZ82TAdzqaJEVJffjlwd5P5iZ/TtIkvrjm555lXhOSI8kTq/Snw6IgjHJ6AGBi
	UQ7Nna+1lfdECF5MR6ABBiqBeBU4+bIYtGY679UOrBlo155/0VVUufU8+5QKRD164MBsodbB5ZkGr
	VYOy6vtgqDIzllwTYhQhEfb1s7d9TfpBU1Omz1QdHBZLbRS18h5bBp3UzUq/t/5V2hiqhXBvbgwHb
	aJhPAio1knk3RvhA7HaiDmYESt66CBAsyxaHA4Nd0eEN1+Vww+4eAZwd6422p20S0n9Qo0WGY940I
	Y8fkITIKQnsNdtpXDlAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAiX-0000000Fem9-3ZZz;
	Thu, 05 Jun 2025 13:33:13 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAYZ-0000000FcK4-2ygh;
	Thu, 05 Jun 2025 13:22:57 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-6049431b409so1533798a12.3;
        Thu, 05 Jun 2025 06:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749129774; x=1749734574; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Of4vTHHo0c3fLH3Y13EMcDavOhIYjcqdwDcNmNcqIeM=;
        b=JP1iQrH4FBdJJsGWtgyf10Qu/As5c4P7QUjwTlZmpjW/7AKXXBI5HCzAYRotZ/zHrd
         VZspK4lyKeZeUk7Eo+2m4gbIKw+DHi+9qKujPjUSfmGRiDWmoCrukBrbWWZYVcwQEyVX
         I58dNHJnZHcgtndAlcE5IdsPBdnH6zbPh/hUBoZqlB0TMFsdjHA27YtdSy8VSBFBgFWH
         BUg4sus68bkyEI0IQ3KTHlLcQ7xzUqC3dhgI42pabitGBud/HV4M/7GYPPxoQSOTLioO
         YWRszvKM9R+xZHX/1cDx++2HCPQM/MJrPSzFN7AmQoej8zVLfideH2VZO3muf8JQzjWL
         J9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749129774; x=1749734574;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Of4vTHHo0c3fLH3Y13EMcDavOhIYjcqdwDcNmNcqIeM=;
        b=UOpzbl2YXt1vq1cEr7Mxu9eA+oed3wgbgYaZHruf+v94cfsCM7wSNemyBSTL88FSpm
         XdJy2XU6gmSyObVp75vV5jiQYy5vvXG4OJoeR01iEmLgXj4DpW7muXZ50xu2zXJK5G+O
         IiWqQnvGzGyKbMcjdOnl1GhISfbx6SeptIC0my6eqKeUnFXOG+Ke9i2AhrJVGJ0yVtfj
         UNAXj4tGr8bIwPl7rxefD4odYit+Yqq52ZknIlL99/gGPat7++pTm+q8R0H2MyePVyYE
         HtnjUwG0LxPoSp42/YPP2vuNDuAjgxN2vZRdJFVR6ynwXbOD1LVCCY+HzRG+0zNzkAG2
         hqsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxSEVZ3YDWVEy/EZD7nlb3D3IteHJ+ldShKxkY5EWQt/rpU4kW9eKyX0XYdLboao51jBfBkj802es6Bxn8lnNq@lists.infradead.org, AJvYcCXHmDOTioW3J7pu4vQADMka6/dgNlFyRYZtSG3srmlsfD7aUhOjC6lUM0dWKt8eWxUOXlaUbwpaWiUI8jiFq+M=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAQMNqnR+nujaeUOp82oNH/ftZR2dGOQRC8XQgBYS3cfkAJu29
	XEzZtOIdKj6j6gzpb479tI/U+bYPusq0Hd4a8by2jzTteMh+KK366AMFti2DOw==
X-Gm-Gg: ASbGncuVk/7z3xA3Qg6hI8vVpQ9i8zy5MMrOEmMRIBha38zl3f2frHLkJ4e0HwkoaWv
	9fjL8QAEtOswUokFmLg17GqjnjUX+sWPEeucPW8vYhGAi12MsgHidAAl8Z1SdCh5J2cvQ/s2Hpf
	LwxgBj124x1CUCLN9BPJQnq/tjAOcuTXSRE7lHevs3k+dVM2d0VncUS+fJYdKES2pOxCZMHiG+0
	S7niltnNa13vBRPB5P1rssxkQKPCZ0vKu5kfWx6zUc/Yhbwnb1ZEkUPHETG02MpofjRLP2pDGJn
	mFlXuLTBPXX6GRMgiSQuT+zMC3CNgOYeSyIY9VD4XlN2AP1QbwhBBVB2WN4XpXwg25cu6/A81RU
	=
X-Google-Smtp-Source: AGHT+IFzTwW0TcXzPL/9HV49c8h7szVsDRMxjGRBWs1/HHxFZV/8F9GvGOd1FZ+sNDL/yaa7WrK/WA==
X-Received: by 2002:a05:6402:358a:b0:5f8:36b2:dc1a with SMTP id 4fb4d7f45d1cf-606ea17a74amr6862983a12.16.1749129773399;
        Thu, 05 Jun 2025 06:22:53 -0700 (PDT)
Received: from smtpclient.apple ([89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6073d367974sm313209a12.70.2025.06.05.06.22.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Jun 2025 06:22:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM
 Sige5
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
Date: Thu, 5 Jun 2025 15:22:41 +0200
Message-Id: <512E950E-E8CB-443B-8E47-79F073D217E8@gmail.com>
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com>
 <6656934.DvuYhMxLoT@workhorse>
 <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
To: Alexey Charkov <alchark@gmail.com>
X-Mailer: Apple Mail (2.3826.600.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_062255_749269_03944730 
X-CRM114-Status: GOOD (  22.36  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdt
YWlsLmNvbT4gdyBkbml1IDQgY3plIDIwMjUsIG8gZ29kei4gMjE6MTI6Cj4gCj4gT24gV2VkLCBK
dW4gNCwgMjAyNSBhdCAxMDozOOKAr1BNIE5pY29sYXMgRnJhdHRhcm9saQo+IDxuaWNvbGFzLmZy
YXR0YXJvbGlAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+IAo+PiAKPiAKPiBGcmVxdWVuY2llcyBh
cmUgZmluZSwgYnV0IEkgZG9uJ3QgdGhpbmsgdGhlIG1vcmUgcG93ZXIgaHVuZ3J5IGJpZyBDUFUK
PiBjbHVzdGVyIGdldHMgYW55IHZvbHRhZ2Ugc2NhbGluZyB3aXRob3V0IGl0LiBPbmNlIEkgdHJ5
IHRvIGxvYWQgdGhlCj4gc3lzdGVtIGVub3VnaCB0aGF0IHRoZSBnb3Zlcm5vciBkZWNpZGVzIHRv
IGJ1bXAgdGhlIGJpZyBjbHVzdGVyCj4gZnJlcXVlbmN5IHVwLCB0aGUgcmVndWxhdG9yIHN0YXlz
IGF0IDg1MDAwMCBtaWNyb3ZvbHRzLCBjYXVzaW5nIHJhbmRvbQo+IHJlYm9vdHMgd2hlbiB0aGUg
d2hvbGUgY2x1c3RlciBzdGFydHMgc3RhcnZpbmcuIFdpdGggdGhlIHBhdGNoLAo+IHZvbHRhZ2Ug
b3NjaWxsYXRlcyBiZXR3ZWVuIDcwMDAwMC03MzcwMDAgbWljcm92b2x0cyBpbiBpZGxlIGFuZCBq
dW1wcwo+IHVwIHRvIDk1MDAwMCB1bmRlciBsb2FkLCBhbmQgdGhlIHN5c3RlbSBzZWVtcyBzdGFi
bGUuCj4gCj4gSGVyZSdzIHdoYXQgSSB1c2VkIHRvIG1vbml0b3IgdGhlIHZvbHRhZ2UgKHRoZXJl
IG11c3QgYmUgYSBiZXR0ZXIgd2F5Cj4gdG8gZG8gaXQsIGJ1dCBpdCB3b3Jrcyk6Cj4gc2lnZTUg
fiAjIHdhdGNoIGNhdCBgZ3JlcCAtciAuIC9zeXMvY2xhc3MvcmVndWxhdG9yLyovbmFtZSB8IGdy
ZXAKPiB2ZGRfY3B1X2JpZ19zMCB8IHNlZCAtZSAncy9uYW1lLiovLydgL21pY3Jvdm9sdHMKPiAK
PiBBbmQgaW4gYW5vdGhlciB0ZXJtaW5hbDoKPiBzaWdlNSB+ICMgc3RyZXNzLW5nIC1jOAoKQWxl
eGV5LApJIHNlZSB5b3UgYXJlIHVzaW5nIHJrMzU3NiBib2FyZCBsaWtlIG1lIChuYW5vcGktbTUp
CkhhdmUgeW91IG9uIHlvdXIgYm9hcmQgY29ycmVjdGx5IHdvcmtpbmcgY3B1IGR2ZnM/CkkgbWVh
bjogWzFdW2Rlc2lyZWQgY2xvY2tzIHJlcG9ydGVkIGJ5IGtlcm5lbCBzeXNmcyBhcmUgaW4gcGFp
ciB3aXRoIFsyW11jdXIgY2xvY2tzPwpJbiBteSBjYXNlIGkgc2VlIG1pbmUgY3B1IGxpdmVzIHRv
dGFsbHkgb24gaXTigJlzIG93biB3aXRoIGR2ZnM6CgpSZXF1ZXN0ZWQgaXMgWzFdClJ1bm5pbmcg
aXMgWzJdCk1lYXN1cmVkIGlzIFszXQoKcmFuZG9tIHJlYWQgMToKUmVxdWVzdGVkIENQVTQ6IDQw
OCBNSHogClJlcXVlc3RlZCBDUFUwOiA0MDggTUh6IApSdW5uaW5nIENQVTQ6IDE4MDAgTUh6IApS
dW5uaW5nIENQVTA6IDE0MTYgTUh6IApNZWFzdXJlZCBvbiBIVzogMTU3OS4wMyBNSHoKCnJhbmRv
bSByZWFkIDI6ClJlcXVlc3RlZCBDUFU0OiAxNjA4IE1IeiAKUmVxdWVzdGVkIENQVTA6IDQwOCBN
SHogClJ1bm5pbmcgQ1BVNDogMjAxNiBNSHogClJ1bm5pbmcgQ1BVMDogMTgwMCBNSHogCk1lYXN1
cmVkIG9uIEhXOiA0MTAuMzMgTUh6CgpyYW5kb20gcmVhZCAzOgpSZXF1ZXN0ZWQgQ1BVNDogNjAw
IE1IeiAKUmVxdWVzdGVkIENQVTA6IDE4MDAgTUh6IApSdW5uaW5nIENQVTQ6IDgxNiBNSHogClJ1
bm5pbmcgQ1BVMDogMTAwOCBNSHogCk1lYXN1cmVkIG9uIEhXOiAyMjc1LjA3IE1IegoKcmFuZG9t
IHJlYWQgNDoKUmVxdWVzdGVkIENQVTQ6IDE2MDggTUh6IApSZXF1ZXN0ZWQgQ1BVMDogMTIwMCBN
SHogClJ1bm5pbmcgQ1BVNDogODE2IE1IeiAKUnVubmluZyBDUFUwOiA4MTYgTUh6IApNZWFzdXJl
ZCBvbiBIVzogMjExNC41OCBNSHoKCnRoaXMgaXMgb24gcmszNTc2Cm9uIGkuZSBhbGx3aW5uZXIg
aDYxOCBvciByazM1ODggYWxsIGxvb2tzIHF1aXRlIG5vcm1hbCAtIFsxXSBhbmQgWzJdIGFyZSBl
cXVhbC4uLiAgCgpteSBzY2FsaW5nIGdvdmVybm9yIGlzIG9uX2RlbWFuZCAtIHNvIGZvciBzdXJl
IGNsb2NrcyBhcmUgZHluYW1pYyAtIGJ1dCBpLmUuIG9uIDM1ODggd2l0aCB0aGUgc2FtZSBiaW5h
cmllcyAtIGkgY2FuJ3QgY2F0Y2ggLWF0IGFueSByYW5kb20gcmVhZCAtIHRoYXQgcmVxdWVzdGVk
IGlzIG5vdCBlcXVhbCB0byBydW5uaW5nIHdoaWxlIG9uIDM1NzYgYWxtb3N0IGFueSByYW5kb20g
cmVhZCBnaXZlcyBzaWduaWZpY2FudCBkaWZmZXJlbmNlcy4KIApbMV0gc2NhbGluZ19jdXJfZnJl
cSBpbiBzeXNmcwpbMl0gY3B1aW5mb19jdXJfZnJlcSBpbiBzeXNmcwpbM10gY29kZSB0byBlc3Rp
bWF0ZSBhcm0gY3B1IGNsb2NrIGZyb20gaHR0cDovL3VvYi1ocGMuZ2l0aHViLmlvLzIwMTcvMTEv
MjIvYXJtLWNsb2NrLWZyZXEuaHRtbAogIAogCgo+IAo+IFRoaXMgbWlnaHQgd2FycmFudCBhIG5v
dGUgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIEkgZ3Vlc3MgOikKPiAKPiBUaGFua3MgZm9yIHlvdXIg
cmV2aWV3IGFuZCB0ZXN0aW5nIQo+IAo+IEJlc3QgcmVnYXJkcywKPiBBbGV4ZXkKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
