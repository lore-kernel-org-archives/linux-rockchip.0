Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34260C6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 15:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbQCph3Oa0OSHEEhdstw80UgSDmlPNl0f6o8PFlpJBA=; b=EMxyFHMuGP2L0X
	5eCccxIXnYLX9I61U1Tya8K+/05fqZOGIJFlfCqggykE8155tbwNJLCzlSBOlqTHy7h7FdMiZB9hW
	98d0UH17UjsNeyKnwNPF16NcgzpB2bauFSONJ2NOJ5DP3Le2jdIq+GQwnVk3lZZkjm/VHeGW0t3IV
	REIiteKIQK5cRhKzHJfySkvHtifaC/NbP6b4OCiu4Z1r2gJZ5IOdQiTqp9UKd//XpS5x4/nGMSXgN
	RwnZYu5MNB/ph6+2Z8x2kCTY10SulvnsiW62yUGvZEc4uiy5OaQYDWCqy4+QcAZK8JZfA0RNQTSI2
	K37J9sZ4L2vdAShCWXwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbk1N-006PlX-Nt; Mon, 13 Mar 2023 15:23:33 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbk1K-006Pk4-LP
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 15:23:32 +0000
Received: by mail-pl1-x629.google.com with SMTP id k2so5468612pll.8
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Mar 2023 08:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678721008;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=34xsWsWiOmbyB93Kvqs+sLtYSQIx3fZ1vJIzZ76Nhek=;
        b=qD3bJZ5NNDhYYUDMScn4rzcLrEURo6QbAFd7FnO4q8LuNThOfZza/1PDHGOvEchSJe
         il/i5JkVimFSjqyI1iq25Tjq//9HEKEhID14Kb6s9UeRnIXf9A6j/Ns5nG4uDY/C6ttp
         TQHT2/D3gXkfjfYeCrg7NbHg33t+ZWf0xwI1V7auxvYrb0++afco5js5AUZ7EWFiF37D
         lA5PSfLk/uSft3b4a1ARxItSA9D/2xGsWVEibey5jcLM9CWWYd1Ga6Hocx7d0OlS+sy8
         jLGj37y8LqvbOQ0JN9Ilq58e/UmapJn60PeiDi314YvEKXCn1zdrNCkz0ink+tLHLt6d
         xNCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678721008;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=34xsWsWiOmbyB93Kvqs+sLtYSQIx3fZ1vJIzZ76Nhek=;
        b=jtSgjW8NnAexwztb8n7EMidGd3pYY2WUsvC+vFf+LcBLN8neQqjygQUlFlbDLsYQkz
         qcPlpia+0Y3zN/0RNGhcu6GK6jCurlOCmpojDZj3eM0FsSJS48T7FFcBK4GBXeQO/iIQ
         miPB2rTf3TzXr/4cruRzzRgiNOBWCCJDRIgY8nExqnW6u1mtEgwh6oPV1NS3HmtgWxHh
         pCjzB9HGayZivZB+7xWucvKqDvqRTyree0mDI452uMy7wpKyskOLkgsdR+PhzJpehAn7
         C0k3YBHNuKQqsQEmJw7M7xN52pjWQHQPgg3TYpX9j9Ii9FWbq2F+eRwtHMC3hriZcaSB
         Prhg==
X-Gm-Message-State: AO0yUKXMoMw2VmWlWEFB7igE1asu9Eqxp/k5akarJ21dd6WTRmvaPnkk
	0n4nKbaHxTG3S7pFceUGBv98svq7dNAbkWYpiOs=
X-Google-Smtp-Source: AK7set9khxSE6og1PK4j9e0NTlY7s9WEuapQTurqJR1/JDOKpo7tYbBIXse/r1mgt5AXJDejtfp/khI66nunHCB4klw=
X-Received: by 2002:a17:903:3410:b0:19f:3cc1:e3c3 with SMTP id
 ke16-20020a170903341000b0019f3cc1e3c3mr1956259plb.12.1678721008482; Mon, 13
 Mar 2023 08:23:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230307154157.1184826-1-zyytlz.wz@163.com> <43b48f87-2343-5855-e6c2-8f30319687c5@xs4all.nl>
 <f0db2bb7-01b0-c146-6643-5509e8fa4b11@xs4all.nl>
In-Reply-To: <f0db2bb7-01b0-c146-6643-5509e8fa4b11@xs4all.nl>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Mon, 13 Mar 2023 23:23:17 +0800
Message-ID: <CAJedcCws+2eK=uu2=+PLZhVVJ+0ErmG5oHSNejDenc4Qu7mpYQ@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: fix use after free bug in hantro_remove
 due to race condition
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Zheng Wang <zyytlz.wz@163.com>, ezequiel@vanguardiasur.com.ar, 
	p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	1395428693sheep@gmail.com, alex000young@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_082330_928610_4D3408CC 
X-CRM114-Status: GOOD (  20.72  )
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

SGFucyBWZXJrdWlsIDxodmVya3VpbEB4czRhbGwubmw+IOS6jjIwMjPlubQz5pyIMTPml6Xlkajk
uIAgMjM6MDnlhpnpgZPvvJoKPgo+IE9uIDEzLzAzLzIwMjMgMTY6MDgsIEhhbnMgVmVya3VpbCB3
cm90ZToKPiA+IE9uIDA3LzAzLzIwMjMgMTY6NDEsIFpoZW5nIFdhbmcgd3JvdGU6Cj4gPj4gSW4g
aGFudHJvX3Byb2JlLCB2cHUtPndhdGNoZG9nX3dvcmsgaXMgYm91bmQgd2l0aAo+ID4+IGhhbnRy
b193YXRjaGRvZy4gVGhlbiBoYW50cm9fZW5kX3ByZXBhcmVfcnVuIG1heQo+ID4+IGJlIGNhbGxl
ZCB0byBzdGFydCB0aGUgd29yay4KPiA+Pgo+ID4+IElmIHdlIGNsb3NlIHRoZSBmaWxlIG9yIHJl
bW92ZSB0aGUgbW9kdWxlIHdoaWNoIHdpbGwKPiA+PiBjYWxsIGhhbnRyb19yZWxlYXNlIGFuZCBo
YW50cm9fcmVtb3ZlIHRvIG1ha2UgY2xlYW51cCwKPiA+PiB0aGVyZSBtYXkgYmUgYSB1bmZpbmlz
aGVkIHdvcmsuIFRoZSBwb3NzaWJsZSBzZXF1ZW5jZQo+ID4+IGlzIGFzIGZvbGxvd3MsIHdoaWNo
IHdpbGwgY2F1c2UgYSB0eXBpY2FsIFVBRiBidWcuCj4gPj4KPiA+PiBUaGUgc2FtZSB0aGluZyB3
aWxsIGhhcHBlbiBpbiBoYW50cm9fcmVsZWFzZSwgYW5kIHVzZQo+ID4+IGN0eCBhZnRlciBmcmVl
aW5nIGl0Lgo+ID4+Cj4gPj4gRml4IGl0IGJ5IGNhbmNlbGluZyB0aGUgd29yayBiZWZvcmUgY2xl
YW51cCBpbiBoYW50cm9fcmVsZWFzZS4KPiA+Pgo+ID4+IENQVTAgICAgICAgICAgICAgICAgICBD
UFUxCj4gPj4KPiA+PiAgICAgICAgICAgICAgICAgICAgIHxoYW50cm9fd2F0Y2hkb2cKPiA+PiBo
YW50cm9fcmVtb3ZlICAgICB8Cj4gPj4gICB2NGwyX20ybV9yZWxlYXNlICB8Cj4gPj4gICAgIGtm
cmVlKG0ybV9kZXYpOyB8Cj4gPj4gICAgICAgICAgICAgICAgICAgICB8Cj4gPj4gICAgICAgICAg
ICAgICAgICAgICB8IHY0bDJfbTJtX2dldF9jdXJyX3ByaXYKPiA+PiAgICAgICAgICAgICAgICAg
ICAgIHwgICBtMm1fZGV2LT5jdXJyX2N0eCAvL3VzZQo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTog
WmhlbmcgV2FuZyA8enl5dGx6Lnd6QDE2My5jb20+Cj4gPj4gLS0tCj4gPj4gIGRyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jIHwgMSArCj4gPj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiA+PiBpbmRleCBiMGFlZWRhZTdiNjUuLjgw
YmQ4NTZhNGRhOSAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb19kcnYuYwo+ID4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX2Rydi5jCj4gPj4gQEAgLTEwOTksNiArMTA5OSw3IEBAIHN0YXRpYyBp
bnQgaGFudHJvX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4+Cj4gPj4g
ICAgICB2NGwyX2luZm8oJnZwdS0+djRsMl9kZXYsICJSZW1vdmluZyAlc1xuIiwgcGRldi0+bmFt
ZSk7Cj4gPj4KPiA+PiArICAgIGNhbmNlbF9kZWxheWVkX3dvcmsoJnZwdS0+d2F0Y2hkb2dfd29y
ayk7Cj4gPgo+ID4gVXNlIGNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygpOiB0aGF0IGVuc3VyZXMg
dGhlIGNvZGUgd2FpdHMgZm9yIGEgcnVubmluZwo+ID4gd2F0Y2hkb2cgZnVuY3Rpb24gdG8gZmlu
aXNoLgo+ID4KPiA+IERpdHRvIGZvciB0aGUgb3RoZXIgcGF0Y2guCj4KPiBBbmQgYWxzbyB0aGUg
Y2VkcnVzIGFuZCBya3ZkZWMgcGF0Y2hlcy4KPgo+IFJlZ2FyZHMsCj4KRGVhciBIYW5zLAoKVGhh
bmtzIGZvciB5b3VyIHJldmlldy4gSSdsbCB1c2UgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jIGlu
IHRoZSBuZXh0IHZlcnNpb24uCgpCZXN0IHJlZ2FyZHMsClpoZW5nCj4gPgo+ID4+ICAgICAgbWVk
aWFfZGV2aWNlX3VucmVnaXN0ZXIoJnZwdS0+bWRldik7Cj4gPj4gICAgICBoYW50cm9fcmVtb3Zl
X2RlY19mdW5jKHZwdSk7Cj4gPj4gICAgICBoYW50cm9fcmVtb3ZlX2VuY19mdW5jKHZwdSk7Cj4g
Pgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
