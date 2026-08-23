Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78E06C5DF8C
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Aug 2026 21:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlsLerA5/5bW+G8Mg90AG+0b0btNMOSzvXEKNt5xySk=; b=Zy65KbEOccVxfK
	U/ZgcX2YJpfDU+gF9MJF2Ni3IhCOxkVHRnZyYL0jZN4vSpPHcvACv/VyepJWBe8MvBG24QTpq9mWg
	6qia0FdS9mQ+ycbhB8r3+dNyQGwD4XUsypZqmipp77pWVY478WF/TB6oyo8RciVEQMOlL+K+pVcu7
	EhD5jLKSgg3Cl+J1McF8ja4mg9GS5yNoc555QyzpwQmef9J5F8M8hgeWiEqtA8n6YYZc1ip/hEdRt
	CAty47hzI5XG/ysK5jQw8dj2HpidlVMuzASqPmive1tRNo+T9xN6PNDtHimk3O8uTNWh/KxILN+Py
	0pOszchB1Ac4keDF2jJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyFP4-0000000Fc2b-11GH;
	Sun, 23 Aug 2026 21:06:54 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyFP0-0000000Fc1o-023j
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Aug 2026 21:06:52 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-69f4acf7047so504353a12.3
        for <linux-rockchip@lists.infradead.org>; Sun, 23 Aug 2026 14:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787519208; x=1788124008; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NXEuJBGfzMeA2VoyieQfWVfmlZbv0eldSLa+1qSHcFI=;
        b=cjGeOs/K4v8Nj4Ojuh8QuyP6ov2dPJzunx9qx4W5fq9SewCrB1TnIW4KKdK7L8pfzS
         +g+UVgMfptgLR1kEqAt8s3Kk8+0NpzFUHUzRc6Fk+k+ec4Tu2Xvpq1+K81y8PgXbqE0T
         MCUnYcaOQLSXWre9iLiOnm+dfI3CpaCtN//3EndBAGDTyMIDmBz7an/pKbJfAjd7os6p
         b9SC80rI0IT6swdqGCc5BoMUEoovsX1+fQ6S7acTi+VzUac0dfZG9gW8soukcCEBrhlK
         MZ23YFiCc9NNb7JxtjH12Z64GoY7CfhEAo9T2jpUd8g7xukbwmE2OdVgFzP0AefkJ9F5
         AwgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787519208; x=1788124008;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NXEuJBGfzMeA2VoyieQfWVfmlZbv0eldSLa+1qSHcFI=;
        b=mc4uoSKBm4eqwF3WqMz1AcAyze2XBTm+Z2pkORKsBwrYxQYoibjJ90ACp8Y5/vvqEx
         tCb+iFYFqkC8ZR/bjho/koGS12xKJd4IDgeCnOQk8f6GfJnCYlcKYRtBtERQBE/9vEZ8
         MZkpanYMv/3YjiJ4ICmFp/Udgm9w04Biktuc2gzdilrFIq2sDo96ryl3wwZ1X8N2ZFDt
         T6o8iLCA0Vh67paEa8LhDFTc29xfLwq/EgTjUyhdlADYGapzt6RL8Z2KfyrIb/qwSApC
         t1yMj+Bl1+p1U2Xm7RPzNOOQrWwXkfEtlCzGlvF7ga3MGEwyFFa2tHC63RI880oJw212
         j5kw==
X-Forwarded-Encrypted: i=1; AHgh+Rr69M4QkJ2x3E7wmP7SeeqMf/YC9k9sQoR/0mSxBL8LnUZRmbQtuy+4X6cO1CcU9JSWl1z0IK+XcXkzc2njVg==@lists.infradead.org
X-Gm-Message-State: AFuF++nR/EtAhS1q2SC8eK0jNhLVqzW1Z+8nGFAg4Agc/74kiy53/9FR
	GIm2OgMDsVxvotlZwl7k3im5r4Q8lg99eSp31pU+/2Vur3PNyGcwc5nf
X-Gm-Gg: AR+sD11l5ZCxvhpG831uKEUxTn8yWCmKhe2XWAheKv66MEBpBKSWT/JeiRR8jY5iD5V
	Uwbtx0VU/MHeeBr9VrVkNX0qI+onQEjX4TcSmqKrSunSi/7lcwQNjQDy3djFWiu81ggB/+EiLaO
	8UlRN3Us8KplVyEgAatD0cf+2bz+GDCm5X7umg1vvcVztosEGmTxNy5Gh/NoMzPjUsQ2nzTAtFp
	+doOXgDphq5luHrV3OVBmCrixFQKO7BV5yCvKidWNAszmx4e+nl5lHQR0YvS/ksT1VRXrvRSYoL
	ky6KVLOcpEVo+Jo6wZw2DDzc7rix45Y9MP68ugqAfaQAwunZrx7Jm+rUzsblCM/kREKs/fbf+dS
	XX+UUFE+If49B+nca3hIERATDQn5siMYCZwqfZydOJp5gbbwSxUiERDKI1fwnbC1sAkY7hqmhwH
	e51olNLtVpp5a+dePiddTX17fbMxbkysJs/4UPyPfpRIn2nJ1YrLDPD4rPAgQhPq5Zej39K1T4o
	80zWJWEfUFN8UPMKBBtluGZrxk=
X-Received: by 2002:a05:6402:d0e:b0:6a3:fee5:adc8 with SMTP id 4fb4d7f45d1cf-6a42eeb84dcmr12976866a12.0.1787519207688;
        Sun, 23 Aug 2026 14:06:47 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a59e1ccf69sm5175122a12.25.2026.08.23.14.06.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Aug 2026 14:06:46 -0700 (PDT)
Message-ID: <a239b296-ba90-45d1-b8b8-713ab29fda5c@gmail.com>
Date: Sun, 23 Aug 2026 23:06:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1] drm: rockchip: add
 drm_plane_create_blend_mode_property
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, andy.yan@rock-chips.com
Cc: hjc@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1ab6fb88-3b84-49b5-aa05-202a84edbd3d@gmail.com>
 <25031028.6Emhk5qWAg@diego>
Content-Language: en-US, ar-EG
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <25031028.6Emhk5qWAg@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_140650_063408_6C5C00C1 
X-CRM114-Status: GOOD (  20.36  )
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

CgpPbiA4LzIzLzI2IDIxOjE5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBKb2hhbiwKPiAK
PiBBbSBTb25udGFnLCAyMy4gQXVndXN0IDIwMjYsIDE0OjI5OjA5IE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgSm9oYW4gSm9ua2VyOgo+PiBBIHZhbGlkYXRlX2JsZW5kX21v
ZGVfZm9yX2FscGhhX2Zvcm1hdHMoKSBmdW5jdGlvbiB3YXMgYWRkZWQgdGhhdAo+PiBmaWxscyB0
aGUga2VybmVsIGxvZyB3aXRoIHdhcm5pbmdzIGZvciBSb2NrY2hpcCBWT1AgdmVyc2lvbiAxIFNv
Q3MuCj4+IEFkZCBhIGRybV9wbGFuZV9jcmVhdGVfYmxlbmRfbW9kZV9wcm9wZXJ0eSgpIGZ1bmN0
aW9uIGFzIGZpeC4KPiAKCj4gVGhpcyBpcyBtaXNzaW5nIGV4cGxhbmF0aW9uIG9uIHdoeSBQSVhF
TF9OT05FIGlzIHRoZSBjb3JyZWN0IHZhbHVlLgo+IAo+IFZPUDIgc2VlbXMgdG8gc3VwcG9ydCBh
bGwgMyBibGVuZCBtb2Rlcz8gU28gYSBzZW50ZWNlIGV4cGxhaW5pbmcKPiB0aGUgcGl4ZWxfbm9u
ZSB2YWx1ZSB3b3VsZCBiZSBoZWxwZnVsLgo+IAo+IAoKSGksCgpJbiB0aGUgdm9wX3BsYW5lX2F0
b21pY191cGRhdGUoKSBmdW5jdGlvbiB0aGVyZSdzIGEgY29tbWVudCB3aXRoIHdpbjAgYmxlbmQg
YnJva2VuOgoKCS8qCgkgKiBCbGVuZGluZyB3aW4wIHdpdGggdGhlIGJhY2tncm91bmQgY29sb3Ig
ZG9lc24ndCBzZWVtIHRvIHdvcmsKCSAqIGNvcnJlY3RseS4gV2Ugb25seSBnZXQgdGhlIGJhY2tn
cm91bmQgY29sb3IsIG5vIG1hdHRlciB0aGUgY29udGVudHMKCSAqIG9mIHRoZSB3aW4wIGZyYW1l
YnVmZmVyLiAgSG93ZXZlciwgYmxlbmRpbmcgcHJlLW11bHRpcGxpZWQgY29sb3IKCSAqIHdpdGgg
dGhlIGRlZmF1bHQgb3BhcXVlIGJsYWNrIGRlZmF1bHQgYmFja2dyb3VuZCBjb2xvciBpcyBhIG5v
LW9wLAoJICogc28gd2UgY2FuIGp1c3QgZGlzYWJsZSBibGVuZGluZyB0byBnZXQgdGhlIGNvcnJl
Y3QgcmVzdWx0LgoJICovCgpJbiB0aGUgZnVuY3Rpb24gdm9wMl9wbGFuZV9pbml0KCkgdGhlcmUg
YXJlIHRoZXNlIGJsZW5kczogCgoJdW5zaWduZWQgaW50IGJsZW5kX2NhcHMgPSBCSVQoRFJNX01P
REVfQkxFTkRfUElYRUxfTk9ORSkgfAoJCQkJICBCSVQoRFJNX01PREVfQkxFTkRfUFJFTVVMVEkp
IHwKCQkJCSAgQklUKERSTV9NT0RFX0JMRU5EX0NPVkVSQUdFKTsKCk15IHF1ZXN0aW9uOgpDb3Vs
ZCBzb21lb25lIHdpdGggbW9yZSBrbm93LWhvdyB0ZWxsIHVzIHdoYXQgVk9QIHZlcnNpb24gMSBp
cyBjYXBhYmxlIG9mPwpJcyB0aGVyZSBhbnl0aGluZyB0aGF0IG5lZWRzIHRvIGJlIHNldCBsaWtl
IGluIG90aGVyIGRyaXZlcnM/CgpGb3IgZXhhbXBsZToKCQlzd2l0Y2ggKHBpeGVsX2JsZW5kX21v
ZGUpIHsKCQljYXNlIERSTV9NT0RFX0JMRU5EX1BSRU1VTFRJOgoJCQlicmVhazsKCQljYXNlIERS
TV9NT0RFX0JMRU5EX0NPVkVSQUdFOgoJCQlicmVhazsKCQljYXNlIERSTV9NT0RFX0JMRU5EX1BJ
WEVMX05PTkU6CgkJZGVmYXVsdDoKCQkJYnJlYWs7CgkJfQoKSWYgc29tZW9uZSBjb21lcyB1cCB3
aXRoIGFub3RoZXIgc29sdXRpb24vcGF0Y2ggdGhhdCdzIGFsc28gZmluZSwgYXMgbG9uZyB0aGUg
a2VybmVsIHdhcm5pbmdzIGFyZSBnb25lLgoKVGhhbmtzIQoKSm9oYW4KCgoKPiBIZWlrbwo+IAo+
PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgo+PiAtLS0K
Pj4KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNTI2MTgxNzAwLjI1MzEwLTMt
bGVhbmRyby5yaWJlaXJvQGNvbGxhYm9yYS5jb20vCj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8IDIgKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX3ZvcC5jCj4+IGluZGV4IDAwOTBkOGZmMGM3OS4uMGJjNWI2MDZmMDIxIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPj4gQEAgLTE4NTAs
NiArMTg1MCw4IEBAIHN0YXRpYyB2b2lkIHZvcF9wbGFuZV9hZGRfcHJvcGVydGllcyhzdHJ1Y3Qg
ZHJtX3BsYW5lICpwbGFuZSwKPj4gIAlpZiAoZmxhZ3MpCj4+ICAJCWRybV9wbGFuZV9jcmVhdGVf
cm90YXRpb25fcHJvcGVydHkocGxhbmUsIERSTV9NT0RFX1JPVEFURV8wLAo+PiAgCQkJCQkJICAg
RFJNX01PREVfUk9UQVRFXzAgfCBmbGFncyk7Cj4+ICsJZHJtX3BsYW5lX2NyZWF0ZV9ibGVuZF9t
b2RlX3Byb3BlcnR5KHBsYW5lLAo+PiArCQkJCQkgICAgIEJJVChEUk1fTU9ERV9CTEVORF9QSVhF
TF9OT05FKSk7Cj4+ICB9Cj4+ICAKPj4gIHN0YXRpYyBpbnQgdm9wX2NyZWF0ZV9jcnRjKHN0cnVj
dCB2b3AgKnZvcCkKPj4KPiAKPiAKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
