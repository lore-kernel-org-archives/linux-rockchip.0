Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BC8D606A33B
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 15:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Si+KaWfr;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=P6es5K0B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4/lMyljUheSiaMUrRqYwFBcrFHJiQpQMG6RmRYb+OUk=; b=Si+KaWfrSnPyFiuYFL4cnGwRWh
	QRawBloV21365Z0Rh6/R+5KC+ZiMKSDXGT/E58/Di6kCf7bhmyicRMB9S4kHU50q1XtAd2WJdQnSl
	HgOCPgRzhqCjtEXHmW7HvD/QXhLoP3aRqQrr6FfNQP39JqiMhwPmqMuG+rm5MA103D52M9Rp2orZt
	XKPILAebbRgqES7b2ZdfLp+63kdVqGS9mMrIXrled1g5zRUc5huEE1d/uS1Thm+6roA7GCYlpvG3F
	RubSmSNLiF4F89veSnyqefNgNnnt66QBIBSblso8dqofFL2fMSPHSCxoCKx5rXcamvUdrmUR4lKPo
	a9MFqbJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSyN6-000000030Jf-41jV;
	Mon, 16 Nov 2026 15:11:52 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.53])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSyN2-000000030H0-3VJC;
	Mon, 16 Nov 2026 15:11:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1794841905; bh=k3wjoXPfdYoH26BVWO3+cw76m8FT5NmjFkdWFdobGv4=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=P6es5K0BZwtv8hMmKItvJ6Bm0mQIhFLeCzPZyRREgDgLMdOH0P+i/M03fp8zfsnS+
	 eNGr3Z/nFkjoIGTSJKXfHAw4U/YdBFNDhGKtW6UojbRp4x+P4RnOJ91EkbOnDkcDZR
	 Wu9+0g5WeXubLQNVsUeM2KBpLofZCn8wvAQq2dwM=
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
X-QQ-XMAILINFO: N55iztL8edgQvN0v5JGUgkPqXum1H/JEX8chapWGgvcpkKr/b21ELtNOyEdmlM
	 t2Ss/HHlHdNl09w2GkccrfHlVek5Hr327J2k5O2pfKE0e3jieSFBKD9ATUn4wF3IH/yb2Rntu7TFp
	 WXm5k0hlGYKwxl1uL9czFZFsGSjq/0nI5xfRoqexTLgEzt5+vRcbMBJCAv0jwWeRskC/qHUaFD2om
	 giLcX0UafcBok9fRKpWypOekoGvYlbISbOu0Y1rEtSf6GQ88i2qx1DycCNNAU9fRch3pP7jVWT1lI
	 AXczut/A/6blFfthX49WeF0Eku9mA2NKjvG+fVc+u3v325NZb635H60VBFXAwRmuzD1X4Ewtn89T7
	 eSRinH6r+1lnCc/s3HTjxSGosXICIGZsdA/c2NsLbdFRaq13z1J8jOSfX3XIxt9gaHOvPHE7MrowT
	 R/7vQV+R1TJCj68QHoopG6fwdQIO7DaLceTq9QM3CxqCN0PIdSDxbD3lfiXaNlIcjcwlPtBHhmTaK
	 0bUxCd+1OwXG9BACryzD3tt7jVRenVmqVAz9pGfEIln9qoBZZyKhTh0zNFmELXf34LKDl5+wWP1EA
	 jg6VTKx1Qof9JczdcZ3ceoWV/kZ5yefg8UriRIoweWbOxdzIViLK96hpSWyCDCxCSAPJg+ahpZnhV
	 aFZvGr+wjPNK2unDlIsAGnp+hf+X1VIe1Yn9AasJ5zIhwNnFSxt1Vdbea+gHFVK2RRm8zIVlnP4tx
	 aJXIeCUWwlVmS5hoba83KO5O/0UQcjEK5f6D08xhQUpM8W3ACZGbgMOasj5v9i5/BDh5u26DBFWVQ
	 Zq/MryA/TfMrEMkV+Q8Eu6SO7nPAXa00pOVy/QMrybrCGwV86vV3Aatf69lW1rX31yZOiNkqRDdOW
	 aUgMzU6Sv8AWEHYxPbXpgSa4srkwhoS8FKMojcBvCFYVh1o5OzFLBroxc920eFp/cXn6meUo+MCKE
	 EMkyKcI++AVByQxb+h3oR4+dtvJLHI82V5EkozsjeyMLRb6EUnZ6ysgJxbMX9jol4LrAujVYffWoM
	 RnUWUfu+qhoZXC+/qPy1u5iXmJJPd+1GfAKz71UTZRFgrykU=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?QW5kcmV3IEx1bm4=?=" <andrew@lunn.ch>
Cc: "=?utf-8?B?QW5kcmV3IEx1bm4=?=" <andrew+netdev@lunn.ch>, "=?utf-8?B?RGF2aWQgUy4gTWlsbGVy?=" <davem@davemloft.net>, "=?utf-8?B?RXJpYyBEdW1hemV0?=" <edumazet@kernel.org>, "=?utf-8?B?SmFrdWIgS2ljaW5za2k=?=" <kuba@kernel.org>, "=?utf-8?B?UGFvbG8gQWJlbmk=?=" <pabeni@redhat.com>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?RGF2aWQgV3U=?=" <david.wu@rock-chips.com>, "=?utf-8?B?QWxleGFuZHJlIFRvcmd1ZQ==?=" <alexandre.torgue@foss.st.com>, "=?utf-8?B?R2l1c2VwcGUgQ2F2YWxsYXJv?=" <peppe.cavallaro@st.com>, "=?utf-8?B?Sm9zZSBBYnJldQ==?=" <joabreu@synopsys.com>, 
	"=?utf-8?B?TWF4aW1lIENoZXZhbGxpZXI=?=" <maxime.chevallier@bootlin.com>, "=?utf-8?B?TWF4aW1lIENvcXVlbGlu?=" <mcoquelin.stm32@gmail.com>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtc3RtMzI=?=" <linux-stm32@st-md-mailman.stormreply.com>
Subject: Re: [PATCH net-next v3 2/2] net: stmmac: dwmac-rk: Add RK3572 support
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Mon, 16 Nov 2026 23:11:42 +0800
X-Priority: 3
Message-ID: <tencent_273206094323A701D688217E3A4D72341C08@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261116-add-board-ok3572-c-net-v3-0-a957fdcd9c7a@qq.com>
 <20261116-add-board-ok3572-c-net-v3-2-a957fdcd9c7a@qq.com>
	<f8d4b637-1818-419c-ac51-fb2ded1f9b3e@lunn.ch>
In-Reply-To: <f8d4b637-1818-419c-ac51-fb2ded1f9b3e@lunn.ch>
X-QQ-mid: xmsezb41-0t1794841902tc50bzb2f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_071149_200852_B63DE7E4 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -1.8 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

> [...]
> > + .regs_valid = true,
> > + .regs = { 0x29d20000, 0x2a040000, 0 },
> > +};
>
> Just looking at this, it is not obvious that rx_delay and tx_delay are
> actually not used.

My board currently uses rgmii-id, where both MAC TX and RX delays
are disabled. I kept the delay handling to support rgmii-rxid,
rgmii-txid and rgmii, using the default values for the MAC delays
enabled in those modes. The legacy tx_delay and rx_delay properties
are now disallowed for RK3572 in the binding.

I currently have only one oscilloscope, with a maximum bandwidth of
200 MHz. With this equipment, I cannot accurately determine how the
TX and RX delay register values translate to picoseconds, so I am
not planning to add support for tx-internal-delay-ps and
rx-internal-delay-ps in this series for now.

Would it be acceptable to support only rgmii-id for RGMII in the next
version, and reject rgmii, rgmii-rxid and rgmii-txid? This would let me
stop using tx_delay and rx_delay in the RK3572 driver path as well.

Best regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
