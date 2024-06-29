Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 077A0C30658
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 10:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxtIJzP2MwE/yRKuhhLTfAsrhIhOhbUGTcsi6ZrcKNo=; b=28WrjKqpXT4LU9
	ll14yMuOHawvXRaBFDictd8gQAUjZv08GD6bbDxOeLUpTm4zNFcQ+8dGaGYTuBURg+f073dj2Gn1s
	66zNyM9o6WPxk8ZllaD5T66tJ3Llph9kCjitKcd5KY8CsuF4aKK4YJP3qVFmOwv7uhtQfs2m2GXao
	NhHtiwxX3bUC48l6xTNnrfH/ToTAhK/fHtr6w23QUum7fUxzqjvf861pasPuKUax/uwg5bd0ihSYr
	hbezx86VZJ5U9FDjrgcNwgFaX9wr9NpRVI3VVHyfBXRzo5WpbqsljJU1SnoHCedYNGYo5+y1P1rye
	8uLqj96O/UzFfnDm3CLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNVA5-0000000GEmJ-2zcw;
	Sat, 29 Jun 2024 10:18:29 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNV9u-0000000GEkm-3jdD;
	Sat, 29 Jun 2024 10:18:20 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a729da840a8so407281266b.1;
        Sat, 29 Jun 2024 03:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719656297; x=1720261097; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QlwoXKISijQ0DRcF+GZnJmixbJReAkQz34nOTF0Vuxk=;
        b=TnpnUmZ9j8c3OfsdX1fotYvxIIH3zyZfmNgPp6YtVi1cCrc71ARmCNzDYmcuOMwPPl
         fNxQddP7zY2UbcPMaLEtCt7QL6OpeCWM11d1hmQTWuNtfD1DD49zXPONDdPHV4F35Va/
         3mL44mIc2bKXCr9yKpBwOduH8TdKvcZBZqTdP2/EKU8/vDcrNbZh1AZYsegPoabc1IdH
         kwaLFxHeoZM/eU4AwlUMWHDFqk97/h9ZxOV13MFHEOCiyiFH6yCYgxl0n3sWu0LDLBNF
         MgeNlcJPp2g/dgbvKlK1UnksRCUuR+e8nnB58ZhHEAUO12z6QoarEwLxZx/FoCW5IZlP
         09Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719656297; x=1720261097;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QlwoXKISijQ0DRcF+GZnJmixbJReAkQz34nOTF0Vuxk=;
        b=LdCb5kJp/OLyVapYiQhgmivbyfGjS57YrfOcwLAe8iHFqC6xcZd4x8G5NAho3ZxNR7
         YHCRenLA8gf/4dz4y7c9WhlqvaqFIpbkaMMV5+w8bQyKqHf3YJw3rhzliJA749yB6V53
         zIBP5QSs3YDY80ouRyH640bxtu1Wf4POkzNYb9XmWOKL65+jEZxz4qrevvRWNBm4feji
         ypnGibYj3TAyyDQjGHOJqEoFSbZxLpac2BC90kSBBcsN7Pf9sg2Jqi6w3e+nOLagKTED
         tgTTZzYj4VDkJ9JWYPx4mrzbBIjxaR6ivtsbMJ5C42OcvBO9tPYEl5al796KHldGMNKi
         67YQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvYg2nrU1i4P3IbhIGyaj9l8UfMJ3vbnptv0n2Id3mS5nx80aLUnWlGcJoxG90A3VEzukwyind/ZXsgvTqPR7R+GeWaIEGXtlZq4OOKhE7wnGoXY77TCo24IAQwYBmprzdCA1vb/0jG0AiVPbr8LreXZ8WpA4EfM8=
X-Gm-Message-State: AOJu0Ywz04jq1La27Q/GxKvkK7cn3NGfjgu65UYEvwVvQtG71zZJlshu
	agZTyvmyr6OfIHYmyntlyoHk0T0I+R01XRdRHZv7nFWwwmIotUTO
X-Google-Smtp-Source: AGHT+IF/MBEiMijU8GjgEXLJuB9PxQWKYMlbEYZlv/UgCvP3oFNMsmcWz1PuXDww6RQR6rVaR2ksVQ==
X-Received: by 2002:a17:907:2d86:b0:a72:5760:1424 with SMTP id a640c23a62f3a-a7513773b0dmr91562566b.0.1719656296728;
        Sat, 29 Jun 2024 03:18:16 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a72ab06565csm151609666b.103.2024.06.29.03.18.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jun 2024 03:18:16 -0700 (PDT)
Message-ID: <a3a1ed17-17f7-480a-8faf-b493918956f0@gmail.com>
Date: Sat, 29 Jun 2024 12:18:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v7] drm/rockchip: rk3066_hdmi: add sound support
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, daniel@ffwll.ch, lgirdwood@gmail.com, broonie@kernel.org,
 linux-sound@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <5c651b3f-fe30-4874-98ed-044f7c62dd97@gmail.com>
 <7c53f7d.bb08.1905ef690ef.Coremail.andyshrk@163.com>
Content-Language: en-US
In-Reply-To: <7c53f7d.bb08.1905ef690ef.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_031818_958389_13216FBF 
X-CRM114-Status: GOOD (  24.50  )
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

SGkgQW5keSwgdGhhbmtzLgoKT24gNi8yOC8yNCAxNTowOCwgQW5keSBZYW4gd3JvdGU6Cj4gCj4g
SGkgSm9oYW4sCj4gCj4gQXQgMjAyNC0wNi0yOCAxNzoyMzozOSwgIkpvaGFuIEpvbmtlciIgPGpi
eDYyNDRAZ21haWwuY29tPiB3cm90ZToKPj4gQWRkIHNvdW5kIHN1cHBvcnQgdG8gdGhlIFJLMzA2
NiBIRE1JIGRyaXZlci4KPj4gVGhlIEhETUkgVFggYXVkaW8gc291cmNlIGlzIGNvbm5lY3RlZCB0
byBJMlNfOENILgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBZYW5nIDx6aGVuZ3lhbmdAcm9j
ay1jaGlwcy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEpvaGFuIEpvbmtlciA8amJ4NjI0NEBnbWFp
bC5jb20+Cj4+IC0tLQo+Pgo+PiBDaGFuZ2VkIFY3Ogo+PiAgcmViYXNlCj4+IC0tLQo+PiBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyAgICAgICB8ICAgMiArCj4+IGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jIHwgMjc0ICsrKysrKysrKysrKysrKysrKysrKysr
Ky0KPj4gMiBmaWxlcyBjaGFuZ2VkLCAyNzUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+PiBpbmRleCAxYmYzZTI4MjljZDAuLmEzMmVl
NTU4NDA4YyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPj4gQEAgLTEwMiw2ICsx
MDIsOCBAQCBjb25maWcgUk9DS0NISVBfUkdCCj4+IGNvbmZpZyBST0NLQ0hJUF9SSzMwNjZfSERN
SQo+PiAJYm9vbCAiUm9ja2NoaXAgc3BlY2lmaWMgZXh0ZW5zaW9ucyBmb3IgUkszMDY2IEhETUki
Cj4+IAlkZXBlbmRzIG9uIERSTV9ST0NLQ0hJUAo+PiArCXNlbGVjdCBTTkRfU09DX0hETUlfQ09E
RUMgaWYgU05EX1NPQwo+PiArCXNlbGVjdCBTTkRfU09DX1JPQ0tDSElQX0kyUyBpZiBTTkRfU09D
Cj4+IAloZWxwCj4+IAkgIFRoaXMgc2VsZWN0cyBzdXBwb3J0IGZvciBSb2NrY2hpcCBTb0Mgc3Bl
Y2lmaWMgZXh0ZW5zaW9ucwo+PiAJICBmb3IgdGhlIFJLMzA2NiBIRE1JIGRyaXZlci4gSWYgeW91
IHdhbnQgdG8gZW5hYmxlCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cmszMDY2X2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jCj4+
IGluZGV4IDc4NGRlOTkwZGExYi4uZDMxMjhiNzg3NjI5IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcmszMDY2X2hkbWkuYwo+PiBAQCAtMTUsMTIgKzE1LDIwIEBACj4+ICNpbmNsdWRl
IDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPj4gI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+
Pgo+PiArI2luY2x1ZGUgPHNvdW5kL2hkbWktY29kZWMuaD4KPj4gKwo+PiAjaW5jbHVkZSAicmsz
MDY2X2hkbWkuaCIKPj4KPj4gI2luY2x1ZGUgInJvY2tjaGlwX2RybV9kcnYuaCIKPj4KPj4gI2Rl
ZmluZSBERUZBVUxUX1BMTEFfUkFURSAzMDAwMDAwMAo+Pgo+PiArc3RydWN0IGF1ZGlvX2luZm8g
ewo+PiArCWludCBjaGFubmVsczsKPj4gKwlpbnQgc2FtcGxlX3JhdGU7Cj4+ICsJaW50IHNhbXBs
ZV93aWR0aDsKPj4gK307Cj4+ICsKPj4gc3RydWN0IGhkbWlfZGF0YV9pbmZvIHsKPj4gCWludCB2
aWM7IC8qIFRoZSBDRUEgVmlkZW8gSUQgKFZJQykgb2YgdGhlIGN1cnJlbnQgZHJtIGRpc3BsYXkg
bW9kZS4gKi8KPj4gCXVuc2lnbmVkIGludCBlbmNfb3V0X2Zvcm1hdDsKPj4gQEAgLTU0LDkgKzYy
LDE2IEBAIHN0cnVjdCByazMwNjZfaGRtaSB7Cj4+Cj4+IAl1bnNpZ25lZCBpbnQgdG1kc2NsazsK
Pj4KPj4gKwlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICphdWRpb19wZGV2Owo+PiArCXN0cnUKPiAK
PiAuLi4uLi4KPiAKPj4gKwo+PiArCXJldHVybiByZXQ7Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgaGRtaV9jb2RlY19vcHMgYXVkaW9fY29kZWNfb3BzID0gewo+PiArCS5od19w
YXJhbXMgPSByazMwNjZfaGRtaV9hdWRpb19od19wYXJhbXMsCj4+ICsJLmF1ZGlvX3NodXRkb3du
ID0gcmszMDY2X2hkbWlfYXVkaW9fc2h1dGRvd24sCj4+ICsJLm11dGVfc3RyZWFtID0gcmszMDY2
X2hkbWlfYXVkaW9fbXV0ZV9zdHJlYW0sCj4+ICsJLmdldF9lbGQgPSByazMwNjZfaGRtaV9hdWRp
b19nZXRfZWxkLAo+PiArCS5ub19jYXB0dXJlX211dGUgPSAxLAo+PiArfTsKPj4gKwo+PiArc3Rh
dGljIGludCByazMwNjZfaGRtaV9hdWRpb19jb2RlY19pbml0KHN0cnVjdCByazMwNjZfaGRtaSAq
aGRtaSwKPj4gKwkJCQkJc3RydWN0IGRldmljZSAqZGV2KQo+PiArewo+PiArCXN0cnVjdCBoZG1p
X2NvZGVjX3BkYXRhIGNvZGVjX2RhdGEgPSB7Cj4+ICsJCS5pMnMgPSAxLAo+PiArCQkub3BzID0g
JmF1ZGlvX2NvZGVjX29wcywKPj4gKwkJLm1heF9pMnNfY2hhbm5lbHMgPSA4LAo+PiArCX07Cj4+
ICsKPj4gKwloZG1pLT5hdWRpby5jaGFubmVscyA9IDI7Cj4+ICsJaGRtaS0+YXVkaW8uc2FtcGxl
X3JhdGUgPSA0ODAwMDsKPj4gKwloZG1pLT5hdWRpby5zYW1wbGVfd2lkdGggPSAxNjsKPj4gKwlo
ZG1pLT5hdWRpb19lbmFibGUgPSBmYWxzZTsKPj4gKwloZG1pLT5hdWRpb19wZGV2ID0KPj4gKwkJ
cGxhdGZvcm1fZGV2aWNlX3JlZ2lzdGVyX2RhdGEoZGV2LAo+PiArCQkJCQkgICAgICBIRE1JX0NP
REVDX0RSVl9OQU1FLAo+PiArCQkJCQkgICAgICBQTEFURk9STV9ERVZJRF9OT05FLAo+PiArCQkJ
CQkgICAgICAmY29kZWNfZGF0YSwKPj4gKwkJCQkJICAgICAgc2l6ZW9mKGNvZGVjX2RhdGEpKTsK
Pj4gKwo+PiArCXJldHVybiBQVFJfRVJSX09SX1pFUk8oaGRtaS0+YXVkaW9fcGRldik7Cj4+ICt9
Cj4+ICsKPj4gc3RhdGljIGludAo+PiByazMwNjZfaGRtaV9yZWdpc3RlcihzdHJ1Y3QgZHJtX2Rl
dmljZSAqZHJtLCBzdHJ1Y3QgcmszMDY2X2hkbWkgKmhkbWkpCj4+IHsKPj4gQEAgLTU2Niw2ICs4
MzQsOCBAQCByazMwNjZfaGRtaV9yZWdpc3RlcihzdHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1
Y3QgcmszMDY2X2hkbWkgKmhkbWkpCj4+Cj4+IAlkcm1fY29ubmVjdG9yX2F0dGFjaF9lbmNvZGVy
KCZoZG1pLT5jb25uZWN0b3IsIGVuY29kZXIpOwo+Pgo+PiArCXJrMzA2Nl9oZG1pX2F1ZGlvX2Nv
ZGVjX2luaXQoaGRtaSwgZGV2KTsKPiAKPiAKPiBBY2NvcmRpbmcgdG8gRG9jdW1lbnRhdGlvbi9k
cml2ZXItYXBpL2RyaXZlci1tb2RlbC9kcml2ZXIucnN0LAo+IAoKPiBJdCBpcyBiZXN0IG5vdCB0
byByZWdpc3RlciBhdCB0aGUgYmluZCBjYWxsYmFja++8mgoKUXVlc3Rpb24gZm9yIHRoZSBEUk0g
ZXhwZXJ0czoKV2hhdCB3b3VsZCBiZSB0aGUgY29ycmVjdCBsb2NhdGlvbi9sZXZlbCBmb3IgdGhl
IHJrMzA2Nl9oZG1pX2F1ZGlvX2NvZGVjX2luaXQoKSBmdW5jdGlvbj8KSXMgdGhhdCBhdCB0aGUg
cmszMDY2X2hkbWlfZW5jb2Rlcl9lbmFibGUoKSBmdW5jdGlvbj8KQXJlIHRoZXJlIG90aGVyIGZ1
bmN0aW9ucy9leGFtcGxlcyBmb3Igc291bmQgaW4gdGhlIERSTSB0b29sYm94PwoKSm9oYW4KPiAK
PiAuLiB3YXJuaW5nOjoKPiAgICAgICAtRVBST0JFX0RFRkVSIG11c3Qgbm90IGJlIHJldHVybmVk
IGlmIHByb2JlKCkgaGFzIGFscmVhZHkgY3JlYXRlZAo+ICAgICAgIGNoaWxkIGRldmljZXMsIGV2
ZW4gaWYgdGhvc2UgY2hpbGQgZGV2aWNlcyBhcmUgcmVtb3ZlZCBhZ2Fpbgo+ICAgICAgIGluIGEg
Y2xlYW51cCBwYXRoLiBJZiAtRVBST0JFX0RFRkVSIGlzIHJldHVybmVkIGFmdGVyIGEgY2hpbGQK
PiAgICAgICBkZXZpY2UgaGFzIGJlZW4gcmVnaXN0ZXJlZCwgaXQgbWF5IHJlc3VsdCBpbiBhbiBp
bmZpbml0ZSBsb29wIG9mCj4gICAgICAgLnByb2JlKCkgY2FsbHMgdG8gdGhlIHNhbWUgZHJpdmVy
Lgo+IAo+IEZvciBleGFtcGxl77yaCj4gdm9wX3Byb2JlIC0t44CLY29tcG9uZW50X2FkZC0t44CL
cmszMDY2X2hkbWlfYmluZC0t44CLcmszMDY2X2hkbWlfYXVkaW9fY29kZWNfaW5pdC0t44CLaGRt
aV9jb2RlY19wcm9iZS0t44CLcm9ja2NoaXBfcmdiX2luaXTvvIhERUZFUiB3aGVuIHBhbmVsIG5v
dCByZWFkee+8iQo+IAo+IFRoaXMgIG1heSByZXN1bHQgaW4gYW4gaW5maW5pdGUgbG9vcCBvZiBw
cm9iZQo+IAo+IAo+PiArCj4+IAlyZXR1cm4gMDsKPj4gfQo+Pgo+PiBAQCAtODEzLDYgKzEwODMs
NyBAQCBzdGF0aWMgaW50IHJrMzA2Nl9oZG1pX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1
Y3QgZGV2aWNlICptYXN0ZXIsCj4+IAlyZXR1cm4gMDsKPj4KPj4gZXJyX2NsZWFudXBfaGRtaToK
Pj4gKwlwbGF0Zm9ybV9kZXZpY2VfdW5yZWdpc3RlcihoZG1pLT5hdWRpb19wZGV2KTsKPj4gCWhk
bWktPmNvbm5lY3Rvci5mdW5jcy0+ZGVzdHJveSgmaGRtaS0+Y29ubmVjdG9yKTsKPj4gCWhkbWkt
PmVuY29kZXIuZW5jb2Rlci5mdW5jcy0+ZGVzdHJveSgmaGRtaS0+ZW5jb2Rlci5lbmNvZGVyKTsK
Pj4gZXJyX2Rpc2FibGVfaTJjOgo+PiBAQCAtODI4LDYgKzEwOTksNyBAQCBzdGF0aWMgdm9pZCBy
azMwNjZfaGRtaV91bmJpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlICptYXN0
ZXIsCj4+IHsKPj4gCXN0cnVjdCByazMwNjZfaGRtaSAqaGRtaSA9IGRldl9nZXRfZHJ2ZGF0YShk
ZXYpOwo+Pgo+PiArCXBsYXRmb3JtX2RldmljZV91bnJlZ2lzdGVyKGhkbWktPmF1ZGlvX3BkZXYp
Owo+PiAJaGRtaS0+Y29ubmVjdG9yLmZ1bmNzLT5kZXN0cm95KCZoZG1pLT5jb25uZWN0b3IpOwo+
PiAJaGRtaS0+ZW5jb2Rlci5lbmNvZGVyLmZ1bmNzLT5kZXN0cm95KCZoZG1pLT5lbmNvZGVyLmVu
Y29kZXIpOwo+Pgo+PiAtLQo+PiAyLjM5LjIKPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
