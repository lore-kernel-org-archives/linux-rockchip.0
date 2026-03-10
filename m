Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B88E6FD4F03
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 16:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-reply-to:From:References:Cc:To:
	Subject:MIME-version:Date:Message-id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kL8eEHKcbwDgZUPfc8ddhWGutiEEZynNem9kHMwiBTM=; b=3kbGzeXh6VwGEM
	FBKEndtpAnzFHt3HGySW08FlTyx0zCLe2Tb8u4Z5oLbPyeb333tixvYHqXZ88XcHowgmUCrcuixH2
	505mw1FdKxMg5l0do967wwH08wRzSWJKeQ9dyk9HrWL+Csah0VK+uWHDYYMhGO7gNNgKjdhF5dan6
	e0CLO5stDDcXXBe2QzWNzfuWGBDqhbapG8MkA0qnHf8+qZ4Rgyh/MXS2RFbdCLmJbDjJwpbchhPMf
	yL1GYx29C6wDQs754875UBgVaPAeVcd8YVaJGXrvjKIjg9qcQ25aUDuTRe6+0ggNHuVcxshf7lCsG
	ZMaUxfU7BM4zfdm7yYFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzzX6-00000009sSX-0dox;
	Tue, 10 Mar 2026 16:02:08 +0000
Received: from abi149ajj127.mrs1.oracleemaildelivery.com ([129.149.100.127])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzzX3-00000009sRJ-3Oi5
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 16:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=pta2002-202603;
 d=pta2002.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=W+2PgkVfhOOGh3JhpM9bXs2EFaDZYgebhRwlkHsFdtk=;
 b=ZPmNfnHCV20y5lQFpCx/n3iD9JWHRew5f9/7nhVxbyarRQJgnB3bKkHA5VXwP1t5PCwgokz2iD39
   I/ru1zQ3yKaQ3E+yTmW0IinvI2n3ToCpUlN+IQu+u9Yx9QlQS39zFbh2DOcRDRZD/hqHqxncTck7
   Xn2UU2UydLJyBTICrcCwoc6GkZb2cV9lFKTZjYXfX/tjzKm3K2b7fsh/Ssb6VL5kf8WBMdowZsNf
   TmfVV4XH7GRX6AkmPyqbuSSLb3yRcLHe1SOlNdbn2pmG39orD2P2Z68u7LMsD4oc52bKL+ulejLv
   Eg6hsGYtAwZsnGauKfcB4kyUjs5jwA4WzMSykQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-mrs-20211019;
 d=mrs1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=W+2PgkVfhOOGh3JhpM9bXs2EFaDZYgebhRwlkHsFdtk=;
 b=SzqWwVFT3IyU2dRx5vcTQ8JqLleoRTnTfTrOWoStQmwF8XS5RPBfCWMe1+RWxeWjRLOQmKiQB2M1
   juFdvr7YMUB5uvI0eagz5eimPXfGBvZzZH1HDwY8IMv9szmSJ6Cn0WW6MZVd4bYqWqFZwfqwY8ED
   98VViu1ZFVUhRtsXvVt0fHjdMfQaZOjb7PuOl6Zpy5G0mhmLfTEM8Gz0twtvtYLk1YNeGYan74TU
   n7AXCQrwqWAepzDHdqrrX0psYbIp5ZVZyQ3EnnnxUEBYpAwb6KVb6hcQJx28mHiTyUoervVPNBUi
   YAEyIU6p0U7UXP3jVP2Ctx9OBO+dF56akse7/w==
Received: by omta-ad1-fd1-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20260212 64bit (built Feb 12
 2026))
 with ESMTPS id <0TBO003KDXV4LW20@omta-ad1-fd1-401-eu-marseille-1.omtaad1.vcndpmrs.oraclevcn.com>
 for linux-rockchip@lists.infradead.org; Tue, 10 Mar 2026 16:01:52 +0000 (GMT)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Message-id: <e57dc0d0-8fad-4c55-ad53-d12cbda480b5@pta2002.com>
Date: Tue, 10 Mar 2026 16:01:36 +0000
MIME-version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260304-radxa-r5-itx-hdmirx-v2-1-6567e9e3298b@pta2002.com>
 <9638846.rMLUfLXkoz@phil>
Content-language: pt_PT
From: Pedro Alves <pta2002@pta2002.com>
In-reply-to: <9638846.rMLUfLXkoz@phil>
Reporting-Meta: AAG0WhO5h6ltxXBJpWKRec1eA5PLxwyFz98OXlRfhTRnD/LE/iOtviDjy2/UiPp4
 KvbKjhNYzrpc8DwWL5pATOhjKj7Eox2ZpAozIertUNSAMTsCpK5t3f5RHeC3pqVj
 x2Ncs4EWrOBs98B10quWyABzPlIQLDayqAyTwd06rhUf9t/pogMirRWbfnjwMH+f
 h9q7lO2zB5txNTXNOlJEeNDSIkog7PKj21aWniAwVIU8eeBk1zuGR8W+yj7f+JFE
 yOswqxisR1u30jQ6MMKs9sK0a1EVWSaDAUhMpJjP7a+cFCVi35ZQsoZeXogac20m
 Wwv2voCLecufpEP3ZLfqMyKW3/Lnf9l2o/kzxigI7PY6DPMD9D2cUUcgr339Ym7i
 bxSgbvKWoFdCzsacmcUSIcOWjXk+hbidbGr9GHUm+A18BpBrmcsf3dvUcZGRS261 Qtfr7KEf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_090205_842840_30A8FD3D 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
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

SGkgYWdhaW4sIHNvcnJ5IGZvciB0aGUgZm9sbG93LXVwOgoKT24gMTAvMDMvMjAyNiAwODo0OCwg
SGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gQW0gTWl0dHdvY2gsIDQuIE3DpHJ6IDIwMjYsIDIxOjQ0
OjM5IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgUGVkcm8gQWx2ZXM6Cj4+
ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwlocGQtZ3Bpb3MgPSA8JmdwaW8xIFJL
X1BDNiBHUElPX0FDVElWRV9MT1c+Owo+IAo+IEFsc28gcGxlYXNlIHByb3ZpZGUgYSBwaW5jdHJs
IHNldHRpbmcgZm9yIHRoZSBncGlvIGhwZCBwaW4uCgpJIG1pZ2h0IGJlIG1pc3Npbmcgc29tZXRo
aW5nLCBidXQgaXNuJ3QgdGhpcyBhbHJlYWR5IHByZXNlbnQgd2l0aCB0aGUKaGRtaXJ4X2RldCBw
aW4/IEl0J3MgY29uZmlndXJlZCBhcyBoZG1pcnhfaHBkIGluIG90aGVyIGJvYXJkcywgYnV0IGZv
cgp0aGlzIG9uZSBJIGxlZnQgdGhlIGhkbWlyeF9kZXQgcGluIG5hbWUgYWZ0ZXIgZGlzY3Vzc2lv
biBpbiB2MSBvZiB0aGlzCnBhdGNoIHRvIG1hdGNoIHRoZSBzY2hlbWF0aWMuCgpJZiB5b3UgbWVh
biBzb21ldGhpbmcgZWxzZSwgcGxlYXNlIGxldCBtZSBrbm93LgoKVGhhbmtzLApQZWRybwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
