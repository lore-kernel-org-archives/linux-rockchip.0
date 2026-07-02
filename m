Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 471CDC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 15:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wi99wXYpH4Vt+17j9/ONrJGOkVR4xJwDXydgQbrDv5Y=; b=Xrft1/QEYD+1z3
	A6DpC+zMb4aJUzVuz1YHABfJ6On8QVXYF/njmkVzoX+VFOaae/7sDdyHp0KzxZX1QfcNlV7hEbf0M
	cqlmDUrxv0QMb5LZXnTC25S1jrp/ngexvOip9whYusWvSvchVSoPnMBpPbdbPi5os2FG3+0r0wQrd
	KcfQC4IMfSdVpTCkbYT4CF+cH7Bw9bG3UdDPWZFt929aFOywFN4MIYkfcBp7qe3y1zd9KD7VCeJqe
	TDu6K31r0UJ54CvBTil8We+pvdGYmguFB6Ua79qAxW/PHHaQbAYdzvMNvV4nTIew/gbsrMhcKoUe6
	hxCCCMKQK2sxQaAmejYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJIO-00000004njc-1Zby;
	Thu, 02 Jul 2026 15:25:44 +0000
Received: from out203-205-221-205.mail.qq.com ([203.205.221.205])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJII-00000004ngG-2mcL
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 15:25:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783005934; bh=/fVlbPyZGXATH2z5WzJ6VMWNrQv8f/QALE3Mh5Gazek=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=jOw38DtwTid4VzpEnbj+r04pW7YwOs2EGmDAWheynYT8NBxM8OKwtqY3ZdbudSWzz
	 uCU5yFUGRx9LB2T0HwlJOm+WPYXFD1rWndkJKWT08TRY9lNSiaRDgaEC0vDGCLWSBP
	 nYegymS2USlIRyC+w/5RD8Aits0SNxHuLDdaGCdU=
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
X-QQ-XMAILINFO: OMqlb7aP4Kjek7vshZOnZvDZb5+pT3yBZiNHZ2hUy7w914sLyLT+p04C4P4x9K
	 rkZ+UKZDF1Ze7T+AawbmzHHGc26F1svH7n53Pvt+ALBPPxl0IPtoRBjpyAJa//Esxs17tB/Auzk6u
	 1Lajtt9xuWDgjgrIjlher+7Hl63RNJawzBh26kiI8HTEW7VCfaHYk1NUFjjwLB3HgoBfJKB4EZ5ig
	 oCav9Hj+HJ/1LklYGXN+XwS9+3qQc6feB0IVzWrvgZg82gW45ooi3e2LaeHj8eULaFH88D1vtIIeK
	 aRJ8FQ/0gnwG2d8Qc0WE8fy4tIfo+SGJZ2CMSCuldorzRe0jzui3TVT/d2Z1rYDbB3okr2mC6Xbcg
	 WmcdNFUq92zXv+2WD1HcQJxAMK8TmZ+cjFKsVMCgu8qw1I6veBYoegqV1FK4vpAcHWrt7qhQG1+oA
	 57TMkADUVea3y7+vBjr4hLDQ1rRKOYeIue1+tepREdsO6WMXGjiLoD4L/up6XbC4JV2vAXqliu1Di
	 lo9Tyqbtg73CTbtd+xPA84EFFoas8G7kI5JGaKZl/EPw7CZXoOFe9pw8iE/P2Q6VzzSyqu0lwUzzj
	 rGPtrF5sxqDcCPEoMYs0tSA73FRjVaU2ACsERW1/O+iT/m3u6qCaKUBtp7xbtrf8kQNdKEHWLNOOq
	 RfRgsqQlQAr9asLRI1XXDQsfiSaQ3JKY2Fe9gcGuk4501d1ceO389TNWiSnbrP+969Ap0kvgP1u3q
	 tL8gcilPGFjtI1bRpu+oI64kWmPJHE5aNl+iGuW2GLaRzJKymPzMWa4hnF4YN5qTiYFoDRrAzKvOv
	 MpvRkwsqG+nL1+o6H0bdP96Niaz3Kx8ekjPGky+WG9QryPnXSD2+jeiSx/WwQCB7vCgiXVQI6JdOe
	 0lNdNfU8d6yxbgOp/yTbeZ3liRCydfFKcFefzHxySIvRVU4NKKyeKcdXJ1QsAiE0+xpr3HqsJpSfQ
	 KwymHuUnQhjREoVqEjPLCOqZ4Am0ruyU/Ej1t43Yo++L6XbjHzGMomiwFxp05yhQbm3wGZYN46kWD
	 6G7VmL3dax4MsHfb3Lx972hi5U4ZlXAyBeiI9w9WZKxkMkXiBgcx/x+e2vWeJh291utzlraY9looR
	 5LW5dLsDH1GlvTOz97hK3tRe
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk@kernel.org>, "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>
Cc: "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?RG1pdHJ5IFRvcm9raG92?=" <dmitry.torokhov@gmail.com>, "=?utf-8?B?U2hlbmdqaXUgV2FuZw==?=" <shengjiu.wang@nxp.com>, "=?utf-8?B?UGVuZ3BlbmcgSG91?=" <pengpeng@iscas.ac.cn>, "=?utf-8?B?UnVzc2VsbCBLaW5n?=" <rmk+kernel@armlinux.org.uk>, "=?utf-8?B?RXJpYyBCaWdnZXJz?=" <ebiggers@kernel.org>, "=?utf-8?B?TWFyaW8gTGltb25jaWVsbG8=?=" <mario.limonciello@amd.com>, "=?utf-8?B?S2FybCBNZWhsdHJldHRlcg==?=" <kmehltretter@gmail.com>, "=?utf-8?B?WWl4dW4gTGFu?=" <dlan@kernel.org>, 
	"=?utf-8?B?U3RlcGhlbiBCb3lk?=" <sboyd@kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: can: rockchip: add rk3588 CAN-FD compatible
Mime-Version: 1.0
Date: Thu, 2 Jul 2026 23:25:31 +0800
X-Priority: 3
Message-ID: <tencent_190046D203F61069FC109A4268AC654C1309@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20260702140654.2961561-1-1579567540@qq.com>
 <tencent_3B2B6003D1DE4FB7A984665A062581766405@qq.com>
	<ec548326-dd8d-4d81-8500-ed4c4c30ddb2@kernel.org>
In-Reply-To: <ec548326-dd8d-4d81-8500-ed4c4c30ddb2@kernel.org>
X-QQ-mid: xmsezb41-0t1783005931tqwjx3m1m
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_082539_015546_381EE6BA 
X-CRM114-Status: GOOD (  13.09  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hi Krzysztof,

Thanks for pointing this out.

> > Add a dedicated rockchip,rk3588-canfd compatible to describe this
> > variant. Do not use rockchip,rk3568v2-canfd as a fallback, because that
> > would describe a register layout that does not match the hardware.
> > 
> > Changes in v2:
> 
> Changelog goes to changelog, so ---.
> 
> See also submitting patches or just start using b4, which would solve
> also your broken threading problem.
> 

I will move it below --- in v3. At the same time, I'll also spend some time
learning how to use b4, and will use b4 to send the next v3 submission.

Best regards,
Cunhao
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
