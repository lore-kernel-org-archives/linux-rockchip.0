Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09BA9EE4998
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 12:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EO41ep4tKt5RN+5eeMOxgwlX2+7Qrv7o3hso0IW7JYo=; b=ZgQc3/ALroZoAw
	Ui6rh1mTFTlzztm+4GO1a9ZapZKy2ckf746PNQKlWy2a9xqE0HJG2nR1V7OVzdXbFfZZDq7fub7x8
	TxYjQCfCgZh3qmMwXhVYm7hfa+SC5f2JuQeDmfvqZu+AZ8/t3YmJQ+sbkTZExMeNs4uGGLGwkiU9e
	fip+7iyfc4Ng5b1pw0P5oG0QpbdXPISQrCtqRXjmcbo4KDO4gnAQaMJrZ14SUs6TtNM58hFWmgkVa
	8eJuPEl7onai4H21/k0SHnnWwodStEf2+Y+7OUf6VhqPHwPCL893jVjQytWo3Ss4maz6oA7yVd6PV
	Jcn7BJCV8qFYU7y3M5UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soM5K-00000009OuH-363x;
	Wed, 11 Sep 2024 12:04:34 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soM48-00000009OYY-1RMR;
	Wed, 11 Sep 2024 12:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1726056179; x=1726660979; i=markus.elfring@web.de;
	bh=to/dI+U8c82M6OElNphf9TFg4NuIv4FJo3rnED38GM0=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=Hco7YKrUwUPLHLTI+twaLWbzmwXkV0mINsS6UdWH0Ao4XcME4uYbNUftJ3kU1pHV
	 3TnV+338SIWsnrYLfBGOePElSld13/qNvlJzwiGtQ3iGlpC+H7hbOvZM7TyhO7fll
	 j6Igv1gKAJbFpN3QKa0DoYV8pdLnS8gvG7G0jL1s1BVle1excKCC5rDKt/mV5bfOz
	 uvSA1U51+g6XacpRV91OjjW5OTJibj9W/f6N4h3/N6zkoGazT0xycNsGIfmfsW0ZA
	 q7TFkNuWXMuarFC58jEqaiUmN3y9MLvljDU9RCR47gd9+K6X1cWrd2Up2l+TQ8H9R
	 y8sK5w41dgaVC01TgA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.86.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1Mq182-1sBDbl0Two-00cfwJ; Wed, 11
 Sep 2024 14:02:59 +0200
Message-ID: <ba285b99-96a6-4fbf-b72e-b264a300ce6f@web.de>
Date: Wed, 11 Sep 2024 14:02:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 iommu@lists.linux.dev, linaro-mm-sig@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, =?UTF-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Will Deacon <will@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20240612-6-10-rocket-v1-8-060e48eea250@tomeuvizoso.net>
Subject: Re: [PATCH 8/9] accel/rocket: Add job submission IOCTL
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240612-6-10-rocket-v1-8-060e48eea250@tomeuvizoso.net>
X-Provags-ID: V03:K1:gBOc2VelSGYN7vMulw3gUfHiDfi7Fce6hUGRA3ig0e7CkPk7ctW
 02fliq1YqKL5NKGvp3rgm2vGCmn6B7aS1N/nr+h0YbeeRcbBWnwr7+rO2Hwhq057gL31eNi
 LR1cvkK0e+qFvnrh0GnTB7rpMSh2/emhZOdJ2z2xi7Ae1r7gPW55kJ+Yp8MMxUhxUlDXyUk
 vYuXx5zKe7w6f1ZlWKmSg==
UI-OutboundReport: notjunk:1;M01:P0:kwUCKjmSRow=;GXfTPl9KFQxzuxjHbnw0svEf0G3
 Uctcq9Kr/ho6Y0LyjZNPPDYlzYjtlry3asr8W82jx14bpGu3jCx2WlCJNwLO0/RybxYvHtqyt
 0eJR2xvpk1mD3BfD6ES4G4nPghEA0Xe0VmyS/bOP3h7e5ccgwFG6rh5+NcRay3ifHOEpc2dJq
 3lz97Wz4Jwb+bX9qUxV2p21EKo0fk/MGTTw+ic/kF7yL3Hj0qMX55emMFpldoG2w1wb3XZSas
 NTbXmQfGKosykNVgoNLaRCy92S00vVSewSAIGc7NLaQksiPebe2x0I0CrEBOSyFKCiJ1lRKHs
 sXoJDShFfVErAk+ftvVPr/5f+uwSALx5Rn4ga/tYXitIuOicPsv9lctt2RJvUUeu7CopQY/J7
 x3Gm3cmwjHVs4GpfTV5F3yUxpiX6gHTwl420nPg98AEQKnlw+9G56/eEv/UOYcHYRq3Plq8xo
 3BzcllAiZYFg/2VEUN85RXJ8nvHYIV6O2UPR0dIeVS97RQfqr5ZDQ58q/KjOl2l2TTgvLYDwo
 9z08q7kvWwjdKsZp7dfTFcdDRsL54w4z7bFZ9Pri6T9YrKUSbIdKGaElp2z7CW+1e4YP0L3Zz
 RkpV3P0IioN2RRARyS9Q4KgwspVFg+nS7lYw/QAgc2hYLa4ve7+kGrWH+XeYK99OXePLIThWj
 oIhQy4AkUaIfiAw2vIr5HWObE/R3WDhulqPh2xWizhETqAPkKZJbRPr6v/yopUUdtUnQB9Kwg
 3id6Oi229ubAiXjr8QtfEw3lsksciZSnl8UuBNhEEOYXyXsNd/B84HnV1Z6/QUqaoKJRztkHQ
 Al0RJc+9fpFxCgs5ckOfnE1w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_050320_690167_AB85DEE3 
X-CRM114-Status: UNSURE (   4.73  )
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

4oCmCj4gKysrIGIvZHJpdmVycy9hY2NlbC9yb2NrZXQvcm9ja2V0X2pvYi5oCj4gQEAgLTAsMCAr
MSw0OSBAQArigKYKPiArI2lmbmRlZiBfX1JPQ0tFVF9KT0JfSF9fCj4gKyNkZWZpbmUgX19ST0NL
RVRfSk9CX0hfXwrigKYKCkkgc3VnZ2VzdCB0byBvbWl0IGxlYWRpbmcgdW5kZXJzY29yZXMgZnJv
bSBzdWNoIGlkZW50aWZpZXJzLgpodHRwczovL3dpa2kuc2VpLmNtdS5lZHUvY29uZmx1ZW5jZS9k
aXNwbGF5L2MvRENMMzctQy4rRG8rbm90K2RlY2xhcmUrb3IrZGVmaW5lK2ErcmVzZXJ2ZWQraWRl
bnRpZmllcgoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
