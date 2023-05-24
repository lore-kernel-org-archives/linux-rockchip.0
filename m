Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81CFCC77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 13:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anFSK1xDdQiRcHIEm2dIyx9+aS1fKK17gEyrPNMdEds=; b=Y3JfyYjUj1os/1
	UTHad+dXZlzLAzNn0mevKGQlsePmboP3ZaTavAGIbpCdjkkYxeKtNaM4dyBL8+NP/jqF2TusvcC3c
	hE1TWfizW3cyDkFPD/nSJoHRxLoU/cb26NUhCA4Vm6jf80fzq+ItHzs20bv0vVShAjnp0Mdm9yvZ4
	1QvzswpuUO/OsSCRpV3rUn4fkG8zzIzS/dh93ghRI/5oQew1fJvXa5PyflY5N11HE6zZgjQ6gDSb8
	+KRmwUcZ/9qqZHEX/OMIYRPbAcevIoTMUP83u9tCStrnXGPLfb22GVgq/MtyrivlHqfQnm3nV3z3w
	ZjAoK9tjKo/2oz9u5hzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1os9-00DcC3-1Z;
	Wed, 24 May 2023 13:49:49 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1os5-00DcAZ-1f;
	Wed, 24 May 2023 13:49:47 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BBF796605943;
	Wed, 24 May 2023 14:49:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684936181;
	bh=eOWh+03SOK7Ma/sA2JICrBy2SCdrGT1dVFFRySHiFBI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=O7Qsp6hFFseZyO9Y61woxfnLQ7oR35mF7vipm2dk/c4+9mVrNZYJLFloqs/vzkHst
	 NrXlx5DLBKi34JaJdpL5g8XeVnpTlzsW4/xk3V8t+gXa2zuznY0LAqrLAYRYuHn3Ti
	 lIHEczYNcFyW27XPdxT0t3G2zOmhyMPQlnJ11kywsGHd/Upwnl6hF1rPQq/216bbAC
	 ArGaN+tOO9X4EZdXoDgRiujGsWcSvSn91tBjvfhmDXPbdKPlyHXdXkj2FpWBRBq+6W
	 XsAVJZlkxnVTIZcYOkIfsV7BbB16dPeBJjBSKvtXvx/JnHNl21yGoHmRQmeIKqTU6b
	 gnueVO9Dpr0Pw==
Message-ID: <cfa23203-1626-440b-ec27-efe56cb297d2@collabora.com>
Date: Wed, 24 May 2023 16:49:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/3] ASoC: es8316: Increment max value for ALC Capture
 Target Volume control
To: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Zhu Ning <zhuning0077@gmail.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 David Yang <yangxiaohua@everest-semi.com>, Daniel Drake
 <drake@endlessm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 kernel@collabora.com
References: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
 <20230524074156.147387-2-cristian.ciocaltea@collabora.com>
 <5dbcbf84-602a-44de-ad99-268d4d5b4b2f@sirena.org.uk>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <5dbcbf84-602a-44de-ad99-268d4d5b4b2f@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_064945_751928_2C273BD5 
X-CRM114-Status: GOOD (  21.94  )
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

T24gNS8yNC8yMyAxMzozMCwgTWFyayBCcm93biB3cm90ZToKPiBPbiBXZWQsIE1heSAyNCwgMjAy
MyBhdCAxMDo0MTo1NEFNICswMzAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4gCj4+IFRo
aXMgbWVhbnMgdGhhdCBlaXRoZXIgdGhlIGhhcmR3YXJlIGRlZmF1bHQgaXMgd3JvbmdseSBzZXQg
dG8gMHhCCj4+IGluc3RlYWQgb2YgMHhBLCBvciB0aGUgc3BlY3MgYXJlIGluY29ycmVjdCBhbmQg
aW5zdGVhZCBvZiBoYXZpbmcgdGhlCj4+IHJhbmdlIDB4QS0weEYgbWFwcGVkIHRvIC0xLjUgZEIs
IHRoZSBzaW5nbGUgdmFsdWUgMHhBIHNob3VsZCBoYXZlIGJlZW4KPj4gbWFwcGVkIHRvIC0xLjUg
ZEIgYW5kIHRoZSByZW1haW5pbmcgcmFuZ2UgMHhCLTB4RiB0byAwIGRCLgo+IAo+PiBJbmNyZW1l
bnQgdGhlIG1heCB2YWx1ZSBhbGxvd2VkIGZvciBBTEMgQ2FwdHVyZSBUYXJnZXQgVm9sdW1lIGNv
bnRyb2wsCj4+IHNvIHRoYXQgaXQgbWF0Y2hlcyB0aGUgaGFyZHdhcmUgZGVmYXVsdC4KPiAKPj4g
LQlTT0NfU0lOR0xFX1RMVigiQUxDIENhcHR1cmUgVGFyZ2V0IFZvbHVtZSIsIEVTODMxNl9BRENf
QUxDMywgNCwgMTAsIDAsCj4+ICsJU09DX1NJTkdMRV9UTFYoIkFMQyBDYXB0dXJlIFRhcmdldCBW
b2x1bWUiLCBFUzgzMTZfQURDX0FMQzMsIDQsIDExLCAwLAo+PiAgCQkgICAgICAgYWxjX3Rhcmdl
dF90bHYpLAo+IAo+IFRoZSBkZXNjcmlwdGlvbiBhYm92ZSBvZiB3aGF0IHRoZSBjb250cm9sIGRv
ZXMgZG9lc24ndCBzZWVtIHRvIG1hdGNoCj4gd2hhdCBhbGNfdGFyZ2V0X3RsdiBzcGVjaWZpZXMg
LSBpdCBpczoKPiAKPiAgIHN0YXRpYyBjb25zdCBTTkRSVl9DVExfVExWRF9ERUNMQVJFX0RCX1ND
QUxFKGFsY190YXJnZXRfdGx2LCAtMTY1MCwgMTUwLCAwKTsKPiAKPiB3aGljaCBpcyBzYXlpbmcg
dGhhdCB0aGUgdmFsdWUgZ29lcyBmcm9tIC0xNi41ZEIgdXAgaW4gc3RlcHMgb2YgMS41ZEIKPiBi
dXQgeW91ciBkZXNjcmlwdGlvbiBhYm92ZSBzYXlzIHRoYXQgMC0xMCBtYXAgdG8gLTEuNWRCIGFu
ZCBvdGhlciB2YWx1ZXMKPiBhcmUgMGRCLgoKTXkgZGVzY3JpcHRpb24gYWJvdmUgbWVudGlvbmVk
IG9ubHkgdGhlIDB4QS0weEYgKDEwLTE1KSByYW5nZSwgYW55dGhpbmcKYmVmb3JlIHRoYXQgaXMg
ZmluZSBhbmQgdGhlIGltcGxlbWVudGF0aW9uIG1hdGNoZXMgdGhlIHNwZWNzOgoKMDAwMCDigJM+
IC0xNi41IGRCCjAwMDEg4oCTPiAtMTUuMCBkQgowMDEwIOKAkz4gLTEzLjUgZEIKLi4uCjAxMTEg
4oCTPiAgLTYuMCBkQgoxMDAwIOKAkz4gIC00LjUgZEIKMTAwMSDigJM+ICAtMy4wIGRCCgpUaGUg
aW5jb25zaXN0ZW5jeSBpcyBoZXJlOgoxMDEwLTExMTEg4oCTPiAtMS41IGRCCgpTaW5jZSB0aGUg
aGFyZHdhcmUgZGVmYXVsdCBpcyAxMDExICgxMSkgaW5zdGVhZCBvZiAxMDEwICgxMCksIEkgYXNz
dW1lZAp0aGUgc3BlY3MgY291bGQgYmUgd3JvbmcgYW5kIHByb2JhYmx5IHNob3VsZCBoYXZlIHBy
b3ZpZGVkIHRoZSBmb2xsb3dpbmcKbWFwcGluZ3M6CgoxMDEwIC0+ICAtMS41IGRCCjEwMTEtMTEx
MSAtPiAwIGRCCgo+IFByZXN1bWFibHkgeW91IGNhbiBjaGVjayB0aGUgZWZmZWN0cyBvZiBjaGFu
Z2luZyB0aGUgdmFsdWU/ICBJdCBzZWVtcwo+IHBsYXVzaWJsZSB0aGF0IHdoYXQncyB3cml0dGVu
IGluIHRoZSBjb2RlIG1pZ2h0IGJlIGFjY3VyYXRlIGFuZCB0aGUKPiBoaWdoZXIgdmFsdWVzIG1p
Z2h0IGFjdHVhbGx5IGNoYW5nZSB0aGUgZ2FpbiBidXQgaXQnZCBiZSBiZXR0ZXIgdG8KPiBjaGVj
ay4KCkkgaGF2ZW4ndCBub3RpY2VkIGEgKG1lYXN1cmFibGUpIGNoYW5nZSBpbiBnYWluIHdoZW4g
c3dpdGNoaW5nIGJldHdlZW4KMTAgYW5kIDExLCBidXQgbXkgdGVzdGluZyBlcXVpcG1lbnQgaXMg
YWxzbyBub3QgdGhhdCBncmVhdC4gV2lsbCB0cnkgdG8KaW1wcm92ZSB0aGUgdGVzdHMgYWNjdXJh
Y3kuCgpUaGFua3MsCkNyaXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
