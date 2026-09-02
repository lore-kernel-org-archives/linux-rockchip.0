Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2EA4C624D0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 12:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5r9+AzKzLuG/xlRVVON4tALRXLO4wU4Y/TgMbBK8YJE=; b=aDACVS2y7SNGcA
	QyHhdbl6TayXYRLAD9aq7sERAWwYXw1gwf6WQ5n3xaqSkmU6ac/ALuqdQ4si1Cb2WGC4t9NmguCM6
	9jbhi2OvRm5DVU7NdNBERf6V91L/ekQAXeHxm+PaDNY0MRxqLXE0dxULHm3Bj/4FEe4oWydIfkkjN
	0eohT8yhVMDGpPtzxpB6wpIgfYolN5fZKWmLIECRBYN4LpmGIKC35vE1eop48ICfbheKUHn05/lJM
	h0Em9B33urI6n1EtheXDVPZsDjKfcB+twg6wahLn61mrVCI+KpABLm+UFJl/Kd8BZE9I0DSKl5t8Q
	Mte/FGh4U4NVi7c0Njaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1kGW-0000000EhMT-3w2K;
	Wed, 02 Sep 2026 12:40:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1kGV-0000000EhLi-0qxI
	for linux-rockchip@bombadil.infradead.org;
	Wed, 02 Sep 2026 12:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=bf+ehOmiL4umBAVvBrXKvt8N+WWJPKbeQnHod1e6bno=; b=EczHlpMUJZ90JAOiRmzN2ERWy7
	YInGeEz+07u3aJmMD9R7YDT823oCaZIBLxFHbNAilNpw1d1tOR7vO35T2YgUcQTKiBtxLWA3hthLx
	dVyOWD2J7tSGzrwRU65bO2F2Q7u0RQCck5cRQJDCG5vEMRZggNHVcyuZcL+zNG24HFAzFoP6NmIcj
	0DNVOICYlXJ49JY0Uv0G8ooOxdtJxBm6Lox849/m5az/9t9Hr+zXvTkna9bCShQNABDXuW0BVqWnr
	ykRx/P0l0JZFAXd10sc/x3aGzxL5f1p137x32jrPbLNHUuQeXJxZr8arz6j046VY657iCxpImd7In
	rGFMCnaQ==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x1kGS-0000000BzdD-0c1A
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 12:40:30 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-c250a2bc3b3so120421166b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Sep 2026 05:40:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788352824; cv=none;
        d=google.com; s=arc-20260327;
        b=bscwFVYOP5OM4nOHg1JoVJGa9GJRoefBfO6HaeZw0LaKnJQ/OIiWscyKWqT6quX9JL
         k77JVJf8Eiy1OGoscI1trL6PWO4yjE22ux5qKBT+fDeNO/mGQUUM+P1v1LGSJpRsld7M
         blChH3LNPtZacpttmjFq/Z1q8TJhmGYVl75x9oArr2hzl5c0wb08r/CFvDn166sccN9V
         du8ZWhrdJQNjaAgyGbB3ujlWUJqDyqb/nG/HCaCGuf/Q+P7RJt9vN0lj8uBqjtmcoVCi
         G6vFla2Jk/kAlRCn1Fwr0ruZ/iKF2alk+bT+a7rdrq+U4BgDNvoc6fva9n2OJtWMsUhQ
         gsAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bf+ehOmiL4umBAVvBrXKvt8N+WWJPKbeQnHod1e6bno=;
        fh=9PjR1folkRuGOEervtEyTw6yqzy1O9rEX0n28nglgzc=;
        b=Swzqrhf65rAdi8G3dLipwTpoF67YWdGhVMpRHu0o22GsS3lFUfzSDG90M5UbIIVJ2A
         Ni4VFeVKSf4j4vO0cb+V+4oUphqF8hk1guRD7MSv9QNF1eJofzeEoTMEmLt4SXZsHoqG
         SujaEfBqQNsi5HGXY65PKmu29MvJnZNJOohqEN5qeP1sITiVqzZi3E1/ZAXdBLTl0WYS
         D5RBSiGRgbKcBBgAJSDsFSejcuov5PusmqF1Jvp4pp4ou9R4eRiW8fXH3rl8BMs/vhCk
         KHu1YOOlDGj6QzKC/tWQPz71y2Q3ezz4//Lz0x/8uYgpbcgtZAnJw39C4SQbuQpF7BRk
         wzjg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788352824; x=1788957624; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=bf+ehOmiL4umBAVvBrXKvt8N+WWJPKbeQnHod1e6bno=;
        b=zebQvg3Na/+7+muN+HNJa6iE/QesVMa+Qf6IQdpvCKhviX5MKsGcRkheDUjRn1AJgD
         L+4sQbEwgRSe3ODxGu0ErMq1ztTELjyhwUswRc2hHbYb7jf4rRTg4UjP+vTNgH27wGsO
         9FLHnRBDs+vwYQ5LEmocby3dkxf0f2S36CjyVkwiX8VDZ0Uvmig1tor0eSlcghYryLSG
         882G92CY+SFZOr7EduJ9s00hTM0u3S3Fgc0WYxyfyMjUPUKE0uqchiYsjpocUQz3i7UG
         JrQJ2tiLBqITDKXs2tKqH5w9HZbyi9K7qvlcYe0Z117OK/mYmkF5L8rNTugUccFGRkBL
         1Mow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788352824; x=1788957624;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bf+ehOmiL4umBAVvBrXKvt8N+WWJPKbeQnHod1e6bno=;
        b=j0dccIwWK6Fv5s+Uha27KKt9QTjyIbq/RvB/qZ+njjqKftdq6hfoPXb17BvAKDLOyx
         J+IX+X/vgjjmhvA1Jemn0nAR8R+Xxe9bM5UpIgrXfieKGSSIjCycJyYaM2leV2YHAGkO
         xlmlxVgRWhxl9e6aeJu3Yz41xEyIEy2oernoAsgneqb1P8/5nhjBPC+QAhCjkbZENlxq
         ox+CxXalHSk+7a/3VxcW28ymQZsctOFR/kIOACTHqG3d36IGR7+9W3+vo1yUFFxRSh0N
         buei0eno2KnE73aJnzP90rNA61pDSwfL0hh88b4YLiJC7Fic0yz65j0zIVnQ0t7i0sUU
         Vudw==
X-Forwarded-Encrypted: i=1; AKwUvBwf9iRg4fDcua3CFeo1nJGSfO7Xqb8h3G8wNa6WfKQRMSPFiwyKJiZtBwhHT02h7bCw50+1XGk0sbfrH85gSQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mLqvb3+KRWwLZChg8M0Bz0FFbDfF10k7XsPEvV4wIwjLkqS987
	H9Z0me5f9XCS6rgwabkSWBJxdMqbAGGxFWTV2b2nAt3AlQi7df4Fiz5pbaSOaXrxSA6BgP1uUuy
	U2PvpBUtTC1ovNSsdNzEGk9/NbDCEnp86ilmFZnTqZQ==
X-Gm-Gg: AYBFou3ZHLMhQenpem1Df/Prm0Ooj10R6oVyiXzqKUPpQejB4ZnF4oTtRmMSmiTEN3z
	yxQQXl/pGq4BlJx0EdRKYoG8zPKac2+dKi+GugAtCtQEx0haZk8tA7Zwj1CZI2Jf8s7+6z7HADJ
	6hHmLycbsygrpPhNTJIbFetPKcA7R5U4i8F61OWUr4W7il+VipJNGY4jzJOnMbx/mlLMbVKNUda
	CwgkQdbp/QDP3zO8vUhFumlzlS/ncJX7UWA01dTcGeyZqCfofA7Lj+qmV0GErn4CNTTyUmqAeul
	O57glQHGD0e9eZUY7wijl2jb0VpdLzIB+k7YyNye2fybIkYbG3AwcbCbh+DHjF2LCEqnb6eAYsJ
	j
X-Received: by 2002:a17:906:6a05:b0:c16:6a42:c7d6 with SMTP id
 a640c23a62f3a-c25d52b8474mr330582766b.9.1788352823968; Wed, 02 Sep 2026
 05:40:23 -0700 (PDT)
MIME-Version: 1.0
References: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
 <20260901-rk3576-otp-cpuid-mac-v1-1-ea9135270fc2@flipper.net>
 <87ecfc81e9.fsf@bootlin.com> <CAKTNdwH5S3MxgR=5s2LXPquCFRXE-61LTTsZoHP9+YmXo_P4Ag@mail.gmail.com>
 <87y0dk6jpn.fsf@bootlin.com>
In-Reply-To: <87y0dk6jpn.fsf@bootlin.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 2 Sep 2026 16:40:16 +0400
X-Gm-Features: AcwNN1VSY-7_RTZXfxYPRP1gcisezSlmJy8fnVW71SAjcha9KevXuu7BcSLrowE
Message-ID: <CAKTNdwF_wY8JSoQs=auK_9YNGT+hwQ=dAhcRVsf1E1CVvFs-XA@mail.gmail.com>
Subject: Re: [PATCH 1/4] nvmem: rockchip-otp: Serialize reads
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Michael Walle <michael@walle.cc>, 
	Finley Xiao <finley.xiao@rock-chips.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_134028_332291_05743417 
X-CRM114-Status: GOOD (  24.74  )
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

T24gV2VkLCBTZXAgMiwgMjAyNiBhdCAyOjE34oCvUE0gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJh
eW5hbEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiAwMi8wOS8yMDI2IGF0IDEzOjI0OjAwICsw
NCwgQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+IHdyb3RlOgo+Cj4gPiBPbiBX
ZWQsIFNlcCAyLCAyMDI2IGF0IDE6MTDigK9QTSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFs
QGJvb3RsaW4uY29tPiB3cm90ZToKPiA+Pgo+ID4+IE9uIDAxLzA5LzIwMjYgYXQgMTk6MzM6MTEg
KzA0LCBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BmbGlwcGVyLm5ldD4gd3JvdGU6Cj4gPj4KPiA+
PiA+IFRoZSBPVFAgY29udHJvbGxlciBpcyBkcml2ZW4gdGhyb3VnaCBhIHNpbmdsZSBzZXQgb2Yg
cmVnaXN0ZXJzIGhvbGRpbmcgYQo+ID4+ID4gc3RhdGUgbWFjaGluZSB3aGljaCBoYXMgdG8gYmUg
c3RlcHBlZCB0aHJvdWdoIGZvciBldmVyeSB3b3JkIHJlYWQsIHlldAo+ID4+ID4gbm90aGluZyBr
ZWVwcyB0d28gcmVhZGVycyBvdXQgb2YgZWFjaCBvdGhlcidzIHdheS4gQ29uY3VycmVudCByZWFk
cwo+ID4+ID4gaW50ZXJsZWF2ZSwgYW5kIHRoZSBvdXRjb21lIGlzIGVpdGhlciBhIHJlYWRlciBi
YWlsaW5nIG91dDoKPiA+PiA+Cj4gPj4gPiAgIHJvY2tjaGlwLW90cCAyYTU4MDAwMC5vdHA6IHRp
bWVvdXQgZHVyaW5nIHJlYWQgc2V0dXAKPiA+PiA+Cj4gPj4gPiBvciwgd29yc2UsIG9uZSBvZiB0
aGVtIHNpbGVudGx5IHRha2luZyBkZWxpdmVyeSBvZiB0aGUgb3RoZXIncyBkYXRhLgo+ID4+ID4K
PiA+PiA+IFJlYWRpbmcgdHdvIGNlbGxzIGluIHBhcmFsbGVsIGZyb20gdXNlcnNwYWNlIG9uIFJL
MzU3NiByZXByb2R1Y2VzIGJvdGgKPiA+PiA+IHdpdGhpbiAxNTAgaXRlcmF0aW9ucyAtIDUzIHJl
YWQgZXJyb3JzIGFuZCA5IGNvcnJ1cHRlZCByZXN1bHRzLCB0aGUgbGF0dGVyCj4gPj4gPiBlaXRo
ZXIgbG9zaW5nIHRoZWlyIGZpcnN0IHdvcmQgb3IsIGluIG9uZSBjYXNlLCBlbmRpbmcgaW4gdGhl
IHR3byBieXRlcwo+ID4+ID4gd2hpY2ggYmVsb25nIHRvIHRoZSBvdGhlciByZWFkZXIncyBjZWxs
IC0gd2hlcmVhcyB0aGUgc2FtZSByZWFkcyBpc3N1ZWQKPiA+PiA+IHNlcXVlbnRpYWxseSBuZXZl
ciBmYWlsLiBDb25jdXJyZW5jeSBpcyBub3QgaHlwb3RoZXRpY2FsIGhlcmUsIGFzIHNpeAo+ID4+
ID4gdGhlcm1hbCBzZW5zb3JzIHNvdXJjZSB0aGVpciB0cmltIHZhbHVlcyBmcm9tIHRoZSBPVFAg
YW5kIHJlYWNoIHRoZSBkcml2ZXIKPiA+PiA+IHN0cmFpZ2h0IGZyb20gYXN5bmNocm9ub3VzIGRy
aXZlciBwcm9iaW5nLgo+ID4+ID4KPiA+PiA+IEd1YXJkIHRoZSByZWFkIHBhdGggd2l0aCBhIG11
dGV4LiBSZWFkcyBhcmUgdGhlIG9ubHkgd2F5IGludG8gdGhlIGhhcmR3YXJlLAo+ID4+ID4gYXMg
dGhlIGRyaXZlciByZWdpc3RlcnMgbm8gd3JpdGUgY2FsbGJhY2ssIGFuZCB0aGV5IGFsd2F5cyBy
dW4gaW4gcHJvY2Vzcwo+ID4+ID4gY29udGV4dCwgc28gYSBwbGFpbiBtdXRleCBzcGFubmluZyB0
aGUgd2hvbGUgY2xvY2stZW5hYmxlLCByZWFkLAo+ID4+ID4gY2xvY2stZGlzYWJsZSBzZXF1ZW5j
ZSBpcyBlbm91Z2guCj4gPj4gPgo+ID4+ID4gRml4ZXM6IDc1NTg2NGZlYjcyOSAoIm52bWVtOiBh
ZGQgUm9ja2NoaXAgT1RQIGRyaXZlciIpCj4gPj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
Zwo+ID4+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5u
ZXQ+Cj4gPj4KPiA+PiBSZXZpZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBi
b290bGluLmNvbT4KPiA+Cj4gPiBUaGFua3MgZm9yIHlvdXIgcmV2aWV3IE1pcXVlbCEKPiA+Cj4g
PiBTYXNoaWtvIGNvbXBsYWluZWQgYWJvdXQgbWl4aW5nIGEgc2NvcGUtYmFzZWQgZ3VhcmQgaW50
byBhIGZ1bmN0aW9uCj4gPiB3aXRoIGdvdG8tYmFzZWQgZXJyb3IgaGFuZGxpbmcsIHNvIEkgYW0g
cmVwbGFjaW5nIHRoZSBndWFyZChtdXRleCkKPiA+IHdpdGggZXhwbGljaXQgbG9jayBhbmQgdW5s
b2NrIGNhbGxzIGZvciB2Mi4gVGhlcmUgd29uJ3QgYmUgYW55Cj4gPiBzZW1hbnRpYyBjaGFuZ2Ug
dGhvdWdoLCBzbyBpZiB5b3UgZG9uJ3QgbWluZCBJJ2QgbGlrZSB0byBjYXJyeSB5b3VyCj4gPiB0
YWcgaW50byB0aGUgdjIgdmVyc2lvbi4KPgo+IE9mIGNvdXJzZS4KClRoYW5rIHlvdSEKCj4gSSBo
YXZlbid0IHNlZW4gU2FzaGlrbydzIGFuc3dlciBidXQgaXNuJ3QgdGhlIGdvYWwgb2YgZ3VhcmRz
IHRvIGp1c3QgYmUKPiByZWxlYXNlZCB3aGF0ZXZlciB0aGUgYWN0dWFsIHJldHVybiBwYXRoPwoK
SSBiZWxpZXZlIGl0J3MgYmFzZWQgb24gdGhlIGd1aWRhbmNlIGluIFsxXS4gSW4gdGhpcyBwYXJ0
aWN1bGFyIGNhc2UsCmdvdG9zIGRvbid0IGp1bXAgb3V0c2lkZSB0aGUgc2NvcGUgd2hlcmUgSSBw
dXQgdGhlIGd1YXJkLCBzbyB0aGUKc2NvcGUtYmFzZWQgZ3VhcmQgaXMgc3RpbGwgY29ycmVjdC4g
SG93ZXZlciwgc3R5bGlzdGljYWxseSwgaXQgaXMKaW5kZWVkIHVuY29tbW9uIHRvIHNlZSBzY29w
ZS1iYXNlZCBndWFyZHMgaW4gZnVuY3Rpb25zIHVzaW5nIGdvdG9zLgpFeHBsaWNpdCBsb2NrL3Vu
bG9jayBpcyBlYXN5IGluIHRoaXMgY2FzZSwgYW55d2F5LgoKWzFdIGh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L3Y3LjIuMi9zb3VyY2UvaW5jbHVkZS9saW51eC9jbGVhbnVwLmgjTDE0
OC1MMTUzCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
