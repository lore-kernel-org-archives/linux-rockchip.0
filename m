Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79696C02190
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jan 2025 10:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0KQ1/QgJvhHV3qPxhaj7C7yLLMj+FdzXiSOEZsQ1BA=; b=2b9kzUm18s4AY/
	IXIyCueX+/A/m7OWfsmqPaHu07JwMb57nw8iWYxu0Rm1aXkX5DAOG1eNY0aQRn5hJ9cOJ9qg3hCS5
	F+RdNw+ZGi3K5L1p8b13PISUeVvgg1xzna4vhCyorOvu8uYJvZ/ACkaTzvyxxXgoUY8MY/fxdqpQ4
	LjPs7t1qv7FKMMRqaU+cIJoYJeMGAs3yin3kgiXsRLbUtsTxc+4qzaHqH8L1Ctbq38G7a6eF4kiej
	jUHf7wkJ85jHlsoVp/Hx3r7sMmi+kq2FHmgrlw5V3D/Va1WkPFB+qj7e6gW1uKrh+z8aIuieLIwxb
	y1RMGHKFwjIlIXqo7FoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdS5J-00000008ewJ-3lNP;
	Thu, 30 Jan 2025 10:47:45 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdS40-00000008epK-1ETa;
	Thu, 30 Jan 2025 10:46:25 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5da135d3162so936582a12.3;
        Thu, 30 Jan 2025 02:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738233982; x=1738838782; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dvH7kPRqDnGEpR7MN/c0OEfUDsiKTUq2RFU3G+hwaFA=;
        b=W2fi5/zv/txQVs56QbEtVO6t39SzVbfZ/aqInuyhkR+ZaHe4pphpn9rKb7wNyJFRLX
         BEkNNzIC2AfJ7JEeeQpwlIxUgbvLEUDRAV/qxW+UqkqEbGJ5QVWRZW1WmYuZu+DEhpfo
         8ZHMlo2VmAmttjYh0R8a3qAFHC1JKomOUHuHCpVTUxteqWAUxyHoO8RziuMDyJGkqfO7
         crUoX9J01irgMI8wKYGAwPlwgtaifLrEl0qncMgzezazcJ7aHL66JbbS0lBP8S3Och1o
         v3wsX2cYIK/YBprXcfRQrUk7zzr5TU5nDlsgg9et+oRSimT5sbyrZNwQnozQ4B4gJpJG
         WEOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738233982; x=1738838782;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dvH7kPRqDnGEpR7MN/c0OEfUDsiKTUq2RFU3G+hwaFA=;
        b=nKRxFg3fcOTuv1XDBryAqoqVTE7imr1l3NLZySmIesvu+vHOuuLB/B8utn3D7MrTz1
         U2CyqQtkxVzsvVTs41tgCkTzrj8c0TaiMlrhXQAF/ZVHry8gXjslUOMbvqWKlRiOnrl5
         duhxyXFKJODAbvCrPBwOV6k4wKUutJPsej/Po50lXTCwjDe/9NFzXagBwZLZZiO8Bbm9
         N53asIJajzm2cCWqyw+I+M3Fqa2B2HUJyJ258tAM4bqLKy64SiR7BoGddevvAxGtM8d7
         d/4VGna5A6I+KSuaLtYbF3gZdXDE0ns2WiXlqv3S7/m407pqjiBDObf3QZU97kCUuq3D
         XOaA==
X-Forwarded-Encrypted: i=1; AJvYcCW9/OzA0YH2zkdROqsfXPh7xdPTHqEkWGe2kdjyAyoXm6SuAa9/1EYYGqa6MoQjV+YBBR1FkDbtDsrdEvv1faQ=@lists.infradead.org, AJvYcCW9CaOZSc1ah71fG0n4MuWi6I0T31hX374oSpgvE4qTPzyTr+G/zeDnXDuSFBt5Cs8Sxu1RhiAwO2s6QN2mAdEQ@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7VNeMdJG6itEB7e4GATyC0/QNEeihm5uJjn795qK1BEuo2K3f
	SnXN3cmrcnGKJgGMS1XrboCi9ajGUsL24c5kgrhxMqWIGkardXHe
X-Gm-Gg: ASbGncvf6giVeKuumNHb/H1Hma3a3fSTdt/Cx8TZ5GJlJ5y1gTGQNOfUSZBg3T+m4/m
	9ikSCmUgtTk5EEgrsIVYKo2Avq+etlbpyqY3hmn5UOWQVHZPucbYp7jhZa9VhZEUw7IJc5W0WjW
	ZFokAontHRagBkzGaztwrCJdo0rxaN7tISR1fOdcdl9SMWFdP69k8BkNeDunAl8WR7vKOV6z0xN
	0iDCAj8RdCvmL8xs8p7h0eDKgSxscGIHrwosjeiG0CrE3wKmkRkjEY7t2DDburEm43bFauFRfnl
	hHcF0VmJgU30F9rRd5BMFwpzuYbiePVT3JsY2cuZdw8RYFogWnXnKx9PonBfiDZK09Hc000t
X-Google-Smtp-Source: AGHT+IEqE7nySufMnirHCjAVfxj7jngqk9FZNYT/ymSENzVPV3ZLZzx1oB1e3XlK0q5RDTVUp4kFhg==
X-Received: by 2002:a05:6402:50ca:b0:5d0:b2c8:8d04 with SMTP id 4fb4d7f45d1cf-5dc5efcab34mr5837467a12.18.1738233982119;
        Thu, 30 Jan 2025 02:46:22 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc725aae6esm854530a12.1.2025.01.30.02.46.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jan 2025 02:46:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <8541055.T7Z3S40VBb@trenzalore>
Date: Thu, 30 Jan 2025 11:46:09 +0100
Message-Id: <278CF0E0-7277-40F3-942C-6FA61AA759A0@gmail.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <5969581.LvFx2qVVIh@arisu> <CE4343FE-94AA-4F84-8C43-8366013AED84@gmail.com>
 <8541055.T7Z3S40VBb@trenzalore>
To: Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_024624_354257_AA0BA075 
X-CRM114-Status: GOOD (  18.89  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNh
c2Fub3ZhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAyOSBzdHkgMjAyNSwgbyBnb2R6LiAxNzo1MDoK
PiAKPiBIaSBQaW90ciwKPiAKPiBPbiBXZWRuZXNkYXksIDI5IEphbnVhcnkgMjAyNSAwOTo0ODo1
MSBFU1QgUGlvdHIgT25pc3pjenVrIHdyb3RlOgo+IAo+IEkgc3VwcG9zZSB5b3UgdGVzdGVkIHdp
dGggbXkgaGV2YyBicmFuY2gsIHdoaWNoIGlzIG5vdCByZWFsbHkgcmVhZHkgeWV0IChTb21lIAo+
IHJlZiBmcmFtZXMgd2lsbCB3b3JrIGJ1dCB1c3VhbGx5LCBpdCB3b24ndCkgQ2FuIHlvdSBjb25m
aXJtIHdoaWNoIGJyYW5jaC9jb21taXQgCj4geW91IGJhc2VkIHlvdXIgdGVzdHMgb24gPwoKSW5k
ZWVkICAtIGnigJltIHVzaW5nIHlvdXIgcmt2ZGVjMiBoZXZjIGNvZGUgZnJvbTogaHR0cHM6Ly9n
aXRsYWIuY29sbGFib3JhLmNvbS9kZXRsZXYvbGludXgvLS9jb21taXRzL2FkZC1ya3ZkZWMyLWRy
aXZlci1oZXZjIHdpdGggaW9tbXUgZnJvbSBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2hh
cmR3YXJlLWVuYWJsZW1lbnQvcm9ja2NoaXAtMzU4OC9saW51eC8tL2NvbW1pdC9iYzQ3YzQ0NWJm
ZDk1ODYxMTVlOWJjZjVmMjMxYzVhNWM1ZjBmODI4CmFuZCBodHRwczovL2dpdGxhYi5jb2xsYWJv
cmEuY29tL2hhcmR3YXJlLWVuYWJsZW1lbnQvcm9ja2NoaXAtMzU4OC9saW51eC8tL2NvbW1pdC85
YTlmZDc5MTUxM2JjMGQwMmMyMjQyYzg4ZjIzYjQxYmQ0N2RlMzBhCiAKCj4gCj4gRm9yIHRoZSBp
b21tdSwgZG8geW91IHNlZSB0aG9zZSBlcnJvcnMgbGlrZSB0aGF0IG9ubHkgb24gMzU2eCBvciBh
bHNvIG9uIDM1ODggCj4gPwoKMzU4OCBoYXMgbm8gYW55IGlvbW11IGVycm9ycy4gCkkgc2VlIGlv
bW11IGVycm9ycyBvbmx5IG9uIDM1NngKIAoKPiBUaGUgaGV2YyBicmFuY2ggc2hvdWxkIGhhdmUg
dGhlIGlvbW11IHBhdGNoZXMgdG8gZml4IHRoYXQga2luZCBvZiB0aGluZ3MuCgpJ4oCZbSB1c2lu
ZzoKaHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9oYXJkd2FyZS1lbmFibGVtZW50L3JvY2tj
aGlwLTM1ODgvbGludXgvLS9jb21taXQvYmM0N2M0NDViZmQ5NTg2MTE1ZTliY2Y1ZjIzMWM1YTVj
NWYwZjgyOApodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2hhcmR3YXJlLWVuYWJsZW1lbnQv
cm9ja2NoaXAtMzU4OC9saW51eC8tL2NvbW1pdC85YTlmZDc5MTUxM2JjMGQwMmMyMjQyYzg4ZjIz
YjQxYmQ0N2RlMzBhCgpJIHNlZSB0aGVyZSBpczogaHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNv
bS9kZXRsZXYvbGludXgvLS9jb21taXRzL2FkZC1ya3ZkZWMyLWRyaXZlci1pb21tdQpMZXQgbWUg
dXBkYXRlIGlvbW11IGNvZGUgdG8gYWJvdmUgYnJhbmNoIGFuZCByZXBvcnQgYmFjayBoZXJlIGhv
dyBpdCBnb2VzIGluIDM1ODggYW5kIDM1NngKCgo+IAo+IChidXQgbm90ZSB0aGF0IGhldmMgc3Vw
cG9ydCBpcyByZWFsbHkgbmV3LCBzbyBpdCBtYXkgaGF2ZSBidWdzIHdpdGggYnVmZmVyIAo+IGFs
bG9jYXRpb25zKQoKSXQgaXMgYWxyZWFkeSBncmVhdCB3b3JrLgpJ4oCZbSBhd2FpdGluZyBmb3Ig
aGV2YyBpbiAzNXh4IGR1cmluZyBsYXN0IDIrIHllYXJzIDotKSAgCgo+IAo+PiBJZiBhbnlib2R5
IGhpbnRzIG1lIGZvciB3YXkvdG9vbCB0byBhbmFseXNlIG9mIHBsYXlpbmcvZmFpbGluZyBzYW1w
bGVzIHRvCj4+IGNhdGNoOiB3aGF0IGVuY29kaW5nIHNwZWNpZmljcyBtYWtlcyBnaXZlbiBzYW1w
bGUgZmFpbGluZyB0byBkZWNvZGUgIG9uCj4+IHJrdmRlYzIgLSBpJ2xsIGJlIG1vcmUgdGhhdCBo
YXBweSB0byBwcm92aWRlIGRldGFpbHPigKYgKGRvaW5nIHNpbXBsZQo+PiBtZWRpYWluZm8gPGZp
bGU+IHNob3dzIG5vIGRpZmZlcmVuY2VzIGZvciBtZeKApikKPiAKPiBGZXcgZmVhdHVyZXMgYXJl
IHN1cHBvcnRlZCBmb3IgSEVWQyBhcyBvZiBub3c6Cj4gLSBObyBzY2FubGlzdCBzdXBwb3J0IChv
bmx5IGRlZmF1bHQgMTZ4MTYgYmxvY2tzIHdpbGwgd29yaykKPiAtIExvbmcgdGVybSByZWZlcmVu
Y2UgZnJhbWVzIGFyZSBhbHNvIG5vdCBjb25maWd1cmVkIHlldC4KPiAtIGhldmMgMTAgYml0cyBp
cyBhbHNvIG5vdCBzdXBwb3J0ZWQgeWV0Cj4gCj4gVGhlc2UgYXJlIHNwZWNpZmljIHRvIHRoZSBl
bmNvZGluZyBhbmQgbWVkaWFpbmZvIHdvbid0IHJlYWxseSBnaXZlIHlvdSAKPiBpbmZvcm1hdGlv
biBvbiB0aGF0LCBleGNlcHQgbWF5YmUgb24gdGhlIDEwIGJpdHMgZm9ybWF0Lgo+IAo+IFlvdSBj
YW4gYWxzbyBjaGVja291dCBZVVZpZXcgKGh0dHBzOi8vZ2l0aHViLmNvbS9JRU5UL1lVVmlldykg
dG8gZ2V0IAo+IGluZm9ybWF0aW9uIG9uIG1lZGlhIGZpbGVzIHN0cnVjdHVyZSwgYnV0IEkgaGF2
ZSBoYWQgaXNzdWVzIHdpdGggSEVWQyBzdXBwb3J0IAo+IGxhdGVseS4KCm9oIGdyZWF0LiB3aWxs
IGRvIGFuZCByZXBvcnQhCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
