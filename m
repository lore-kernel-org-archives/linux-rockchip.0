Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B1C8C6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 13:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFeLvWDFfnwBJDOV2/H3VA6pGsuZy/Gna/d0fDYEVPE=; b=0BhUbt8X0EjhMN
	FwjEz8MlYvI7kqRjPEtYHgrEFr8sZx9ERoxX58OUWjyOk9wxbPNRwn7cPAV2qT4YvcF7YDLguNL+3
	o8EmLRVUfPdutBXYtlCqtNGH5QeW1p4P9tTDpVOmkNCZb1g9vRewE2An4/fmbjW1bBGETxQaW/kuI
	bdVCpWk4gzVi9tPRCdm8+zfw+7X/BkGMhH+VhVFqlZQ5L+UHTl+flDhwmQu7MJ/5KT5F+JI0o6Nso
	/rsIRDWCvcT3+gkl5ChuRecMasA+SOgJEJNk3mAGFCGl2ru+q9th8QfXxWeYRY4gC2/P0Ejrv48uZ
	Ol/81T8oEJ81o2u+Bn5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiZP-00604I-HR; Mon, 13 Mar 2023 13:50:35 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiZM-00603W-To
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 13:50:34 +0000
Received: by mail-pg1-x52a.google.com with SMTP id y19so6925816pgk.5
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Mar 2023 06:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678715432;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z0slDHNN8/BdrMbgc+7zqjHjOG9tY+7Xd79Alajn/RY=;
        b=C27H9R8cDGjOHixrgjQosdjLQ877J/bqG9ewVDIDhsHMafRjDF5uYlFkEhT2nxwGU0
         aVWHAH2M4t2LpUQ5guTQeFsJErOP7IQ1IY/qAwP3kyMRbRCZupghoobCiLhIMy4Ysjjd
         RdTE25wfHscCr1JlUyCK8JiiWZkKwQeI3Wm6z7RlemHlegslZw/y8sJhNDoyM14VZ7gN
         /2saryYRozRBktVUAa9elvO8ryrRr/jvhROVzbwvg+/9cSMUhb32Gv9CyGi/5OfbqsyZ
         H9eYeAjAq1/3325Y2n+2qudEIFHzUhbi0lXPMZzA0QqroKwErEwwyRPIc7Oj9UatK7Qn
         9Udg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678715432;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z0slDHNN8/BdrMbgc+7zqjHjOG9tY+7Xd79Alajn/RY=;
        b=aEtD9rFm5fJ3WGBwwDfleKnz8WPuOvCsj6PODYdjiRabtV6imyZQhFtHqiuaiGEzM0
         l/mBcJga/O8l5u3HTA/PEARifWGtic6fzqdf7vgKv8T5+yUVmhq7N6Xm4+n51tdipwgY
         9X6OEDFMb3nEbcNI8gXMjgOYm8fwlyIAJvDRJOjehe55YWE6d1dtl1Tt8nZodszBPRJc
         phtpIjVdm5fCLIRS6JYV3oE+/oZx2HOnKC/FbdUUZotF7Rkqtp6aa4nVDQRsCMKR7eCx
         BaT/muFpk0dTmB65KRp+asfo78yzVcYIPW2b7porn6hktavvYtBzf2Kd8Mx+hkg/dTlT
         vXEg==
X-Gm-Message-State: AO0yUKWxUC3tcs7Wf3eQ85KaCVtOn63i7Hsk12OCqq44v0Pc3H0q5yeK
	RraSQcB+R0VoHs2FnjmZEa1/5ShnM49B8L4DsvY=
X-Google-Smtp-Source: AK7set+3M2xZK/+NAChWKcLBX5k1lbxHO0uJw/7dcLEvcXDmIiCru+rRuyQLZI4q0I87/8eF1BfnAB51dLDgL2JIT+8=
X-Received: by 2002:a62:8643:0:b0:590:3182:9339 with SMTP id
 x64-20020a628643000000b0059031829339mr13311542pfd.0.1678715432287; Mon, 13
 Mar 2023 06:50:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230307153542.1178065-1-zyytlz.wz@163.com> <7f9796d2-1885-a6f2-b9e3-d6ea58524033@xs4all.nl>
 <CAJedcCwnvNK8Gbcxz2V5+ebRJFrEYjpoJsKTKZ7DOSETr_7LEQ@mail.gmail.com> <1c1e4e60-3b90-f268-8012-3193e1de4769@xs4all.nl>
In-Reply-To: <1c1e4e60-3b90-f268-8012-3193e1de4769@xs4all.nl>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Mon, 13 Mar 2023 21:50:19 +0800
Message-ID: <CAJedcCwm_2Z3stAtzAeJFgj88BsZrQ5kk7Wt4+gW=mL-p0oLrw@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: fix use after free bug in hantro_release
 due to race condition
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Zheng Wang <zyytlz.wz@163.com>, ezequiel@vanguardiasur.com.ar, 
	p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	1395428693sheep@gmail.com, alex000young@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_065033_159840_772B029F 
X-CRM114-Status: GOOD (  23.32  )
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
uIAgMjE6NDflhpnpgZPvvJoKPgo+IE9uIDEzLzAzLzIwMjMgMTQ6NDUsIFpoZW5nIEhhY2tlciB3
cm90ZToKPiA+IEhhbnMgVmVya3VpbCA8aHZlcmt1aWxAeHM0YWxsLm5sPiDkuo4yMDIz5bm0M+ac
iDEz5pel5ZGo5LiAIDIxOjE35YaZ6YGT77yaCj4gPj4KPiA+PiBPbiAwNy8wMy8yMDIzIDE2OjM1
LCBaaGVuZyBXYW5nIHdyb3RlOgo+ID4+PiBJbiBoYW50cm9fcHJvYmUsIHZwdS0+d2F0Y2hkb2df
d29yayBpcyBib3VuZCB3aXRoCj4gPj4+IGhhbnRyb193YXRjaGRvZy4gVGhlbiBoYW50cm9fZW5k
X3ByZXBhcmVfcnVuIG1heQo+ID4+PiBiZSBjYWxsZWQgdG8gc3RhcnQgdGhlIHdvcmsuCj4gPj4+
Cj4gPj4+IElmIHdlIGNsb3NlIHRoZSBmaWxlIG9yIHJlbW92ZSB0aGUgbW9kdWxlIHdoaWNoIHdp
bGwKPiA+Pj4gY2FsbCBoYW50cm9fcmVsZWFzZSBhbmQgaGFudHJvX3JlbW92ZSB0byBtYWtlIGNs
ZWFudXAsCj4gPj4+IHRoZXJlIG1heSBiZSBhIHVuZmluaXNoZWQgd29yay4gVGhlIHBvc3NpYmxl
IHNlcXVlbmNlCj4gPj4+IGlzIGFzIGZvbGxvd3MsIHdoaWNoIHdpbGwgY2F1c2UgYSB0eXBpY2Fs
IFVBRiBidWcuCj4gPj4+Cj4gPj4+IFRoZSBzYW1lIHRoaW5nIHdpbGwgaGFwcGVuIGluIGhhbnRy
b19yZWxlYXNlLCBhbmQgdXNlCj4gPj4+IGN0eCBhZnRlciBmcmVlaW5nIGl0Lgo+ID4+Pgo+ID4+
PiBGaXggaXQgYnkgY2FuY2VsaW5nIHRoZSB3b3JrIGJlZm9yZSBjbGVhbnVwIGluIGhhbnRyb19y
ZWxlYXNlLgo+ID4+Pgo+ID4+PiBDUFUwICAgICAgICAgICAgICAgICAgQ1BVMQo+ID4+Pgo+ID4+
PiAgICAgICAgICAgICAgICAgICAgIHxoYW50cm9fd2F0Y2hkb2cKPiA+Pj4gaGFudHJvX3JlbW92
ZSAgICAgfAo+ID4+PiAgIHY0bDJfbTJtX3JlbGVhc2UgIHwKPiA+Pj4gICAgIGtmcmVlKG0ybV9k
ZXYpOyB8Cj4gPj4+ICAgICAgICAgICAgICAgICAgICAgfAo+ID4+PiAgICAgICAgICAgICAgICAg
ICAgIHwgdjRsMl9tMm1fZ2V0X2N1cnJfcHJpdgo+ID4+PiAgICAgICAgICAgICAgICAgICAgIHwg
ICBtMm1fZGV2LT5jdXJyX2N0eCAvL3VzZQo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBaaGVu
ZyBXYW5nIDx6eXl0bHoud3pAMTYzLmNvbT4KPiA+Pj4gLS0tCj4gPj4+ICBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyB8IDEgKwo+ID4+PiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gPj4+IGluZGV4IGIwYWVlZGFlN2I2NS4u
Y2YwMGNjYWE3ODI5IDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyb19kcnYuYwo+ID4+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+ID4+PiBAQCAtNjAxLDYgKzYwMSw3IEBAIHN0YXRp
YyBpbnQgaGFudHJvX3JlbGVhc2Uoc3RydWN0IGZpbGUgKmZpbHApCj4gPj4+ICAgICAgICAqIE5v
IG5lZWQgZm9yIGV4dHJhIGxvY2tpbmcgYmVjYXVzZSB0aGlzIHdhcyB0aGUgbGFzdCByZWZlcmVu
Y2UKPiA+Pj4gICAgICAgICogdG8gdGhpcyBmaWxlLgo+ID4+PiAgICAgICAgKi8KPiA+Pj4gKyAg
ICAgY2FuY2VsX2RlbGF5ZWRfd29yaygmdnB1LT53YXRjaGRvZ193b3JrKTsKPiA+Pj4gICAgICAg
djRsMl9tMm1fY3R4X3JlbGVhc2UoY3R4LT5maC5tMm1fY3R4KTsKPiA+Pj4gICAgICAgdjRsMl9m
aF9kZWwoJmN0eC0+ZmgpOwo+ID4+PiAgICAgICB2NGwyX2ZoX2V4aXQoJmN0eC0+ZmgpOwo+ID4+
Cj4gPj4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmM6IElu
IGZ1bmN0aW9uIOKAmGhhbnRyb19yZWxlYXNl4oCZOgo+ID4+IGRyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jOjYwNDozMDogZXJyb3I6IOKAmHZwdeKAmSB1bmRl
Y2xhcmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDigJhmcHXi
gJk/Cj4gPj4gICA2MDQgfCAgICAgICAgIGNhbmNlbF9kZWxheWVkX3dvcmsoJnZwdS0+d2F0Y2hk
b2dfd29yayk7Cj4gPj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fgo+
ID4+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmcHUKPiA+PiBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYzo2MDQ6MzA6IG5vdGU6IGVh
Y2ggdW5kZWNsYXJlZCBpZGVudGlmaWVyIGlzIHJlcG9ydGVkIG9ubHkgb25jZSBmb3IgZWFjaCBm
dW5jdGlvbiBpdCBhcHBlYXJzIGluCj4gPj4KPiA+PiBZb3UgY2xlYXJseSBkaWRuJ3QgY29tcGls
ZSB0aGlzIHBhdGNoIQo+ID4+Cj4gPiBTb3JyeSBmb3IgbXkgbWlzdGFrZS4gSSB3YXMgaHVycmll
ZCB0byByZXBvcnQgdGhlIGlzc3VlIGFuZCBkaXNjdXNzCj4gPiB3aXRoIGRldmVsb3BlciB0byBj
b25maXJtIGl0IC4gSSdsbCBjb21wbGV0ZSBpdCBhbmQgdGVzdCBpdCBsb2NhbGx5Lgo+Cj4gV2Fz
IHRoaXMgVUFGIGFjdHVhbGx5IG9ic2VydmVkLCBvciBpcyBpdCB0aGVvcmV0aWNhbD8KPgoKVGhp
cyBpcyBhIGJ1ZyBpZGVudGlmaWVkIGR1cmluZyBhIHN0YXRpYyBhdWRpdCBhbmQgcmVmZXJlbmNl
ZCB0byBvdGhlcgpzaW1pbGFyIGlzc3Vlcy4gVGhlcmUncyBubyBQb0MgYnV0IHNvbWUgd29yayBo
YXMgcHJvdmVuIHRoYXQgdGhlIHJhY2UKdGltZSB3aW5kb3cgY2FuIGJlIGVubGFyZ2Ugd2hpY2gg
bWFrZSB0aGUgVUFGIHByYWN0aWNhbC4KCkJlc3QgcmVnYXJkcywKWmhlbmcKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
