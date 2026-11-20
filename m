Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808D3606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dcF6CTHu;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=avxULmTp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=REyPYd+Jd1PiND7VpN3asNKp461KsN8qzz5IpWT6rdI=; b=dcF6CTHuogqgA3F8NkdrtI55hu
	Cqml6MKyWtHTgWZL1UUOgoTkknNRpqFz/cy+wwsFFZyrCaCmb5F0Zbpjd7V3A84ugGTJFRhPNNJbe
	bWSVqLbyAV0fXJSCtDuZGAsTcpQ0+dmllXacuPx65tEYi27DSUoeQ3yVH3pz8GXdSt8EvgGvOVXfr
	s6ICLZ7FQtR1m2OThC2/Zt85oGHA0by4UhMnmUeLwLEcuO0lEP6+jBN8GDRDCm9nvrrrXYcHAQEs8
	kg++laoR4FjfkDYFohu0uRQuB2AAEUB39LrkCY9Hye6L+oh253MOTJXz0YV4MRE3fml1RXbMlohLF
	uLw1tuTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUP4E-0000000FBXc-2lJY;
	Fri, 20 Nov 2026 13:54:18 +0000
Received: from out162-62-58-216.mail.qq.com ([162.62.58.216])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUP48-0000000FBWP-28BM;
	Fri, 20 Nov 2026 13:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1795182840; bh=JvKgGTjq2BPEe61GwX/IAd5voKriY1si3N+Q1SQuS+8=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=avxULmTpzYlINMYMerBM8KO0ptt/FuqSFGc8Nvesy/uIg+2oRARAUR8EfBYiazqx1
	 2BeuOfaIqGXlYGL05H++5xKwa2BFu+nPfyPYOAAPGxmNyLFedVjxjG2D9RROMbDXF1
	 4IUU8S2vwn88T4XCjw8TJ45yZu+FyvdkhaRWhqfU=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-XMAILINFO: OTkXlZHit/HDYSOMMYUSEEaFDIssz1W9vtk4QajQI2ZSIDw6z3e3/fziSn1gxD
	 NRzOwWA0EKV5Xs+u57yAudQ/ZR+h/8ZQ2O1AUpRdZGuBGoLSIniCUhxiNX60gGQBeU/s7BVNMeoDK
	 6sQTLDQAQvtnsKWBuEa8O2bR9X6uLK3NdiBgHKpcgVyp/dqCOE9FZsnvH+Nh7TABBd4s+RjqnLpzo
	 kX0WwTvW0pry+FPxjPfTFI5bDKsWLCNfU9b7rQs0QEMCX+yjXJF3pXLY5INZt1PRaeiYIm980EC+i
	 ksbMOELwGQyLAsjY1g5aniNmIS+geQlR2jwJniCicFcpInkrFLuerPKM/r7Uc98T/fvCoTUrxSbHe
	 8W67anNj909GuWCLJnvyzj9VKlcT/fMW4SgyQ8g1AjRjVve1raT93B6AoJRaskEg6NfIYLFNflEcT
	 iZrnjeqQKB4VWhI+jVbUjca1TGGFOod6sMcR5YNTJTH9u693e5BXglWXTSkr+MsYa8zB+pv9V1jpD
	 MjDcJhgl5yVjqOWyWxYtDdh7WHUJkVdiIlAgw0ZQtr+Cj8u/CiW1d16CsnX2zzj5GLAaduahoxfyM
	 TCEkmm432ee+WSri6RKBSVM/ktHFXJCli1M/Hk4E6cqeWfk0BqBsxH8VRQ/ihT1ahdqfyvzYLJZEp
	 t4q4/A6Tj8UGgn909/LVRfKN2IikVmwqK8AJfyFcBMoHvxT3TM/Z4dcuj/AaFZHSDd6L9BRYNMB5m
	 F6HKoDrSPC+sX/x48Nu3RsE5fI/fZN/QHNO9LSEB4uLbomRE99gOdW/9ewDWlEPYEb5r16UQ2oOuM
	 +FJvdsW+5wvlJ9rFoEhFMIQ8PjOK2p6G2Lf1G2jsd8EnrSlYbnzyTKkfkiU0QIzVZAblvQQLUGwoJ
	 rfycw2PefoJtR3rtCuqN7jF7II9g0Xb5Xbp9LjMhSY7FY2cbWxZJzTqoD5p6QGQ2lrXTRIy433COB
	 HF0W0RuPpgEDtZXbMBRLnVBbS/AMYrm0k5Gz4MUiuX19nwNerN+cqUrNj/gU4WqwYcbNpRx7XBtiQ
	 9obkPQmlblrCQuSR8D8yRDCao9KM8Hq4xYqZQFtwvq3/NJG9iEXLhe13raQMjUOpe5jpnPM45cZ1A
	 8alZDdwOwNZLX9K2Udy1Vu9Vfn88od9O75+eVdokKCqFJTvDITj3pAe+
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?SGVpa28gU3TDvGJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?RWxhaW5lIFpoYW5n?=" <zhangqing@rock-chips.com>, "=?utf-8?B?VWxmIEhhbnNzb24=?=" <ulfh@kernel.org>
Cc: "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtcG0=?=" <linux-pm@vger.kernel.org>, "=?utf-8?B?U2ViYXN0aWFuIFJlaWNoZWw=?=" <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v5 2/2] pmdomain: rockchip: Add RK3572 power domains
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Fri, 20 Nov 2026 21:53:58 +0800
X-Priority: 3
Message-ID: <tencent_DFB6F95537CDD14CC97C26B08CE407F4210A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261118-add-board-ok3572-c-pmdomain-v5-0-f1af919dd434@qq.com>
 <20261118-add-board-ok3572-c-pmdomain-v5-2-f1af919dd434@qq.com>
	<z4ZFdDPMSaWK2zh19ZM7pA@sntech.de>
In-Reply-To: <z4ZFdDPMSaWK2zh19ZM7pA@sntech.de>
X-QQ-mid: xmsezb41-0t1795182838tuf7c54wx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_055413_105139_051A925B 
X-CRM114-Status: GOOD (  25.08  )
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

Hi Heiko,

> I guess the first question is, why do you need that?
> The TRMs of both RK3572 and RK3588 have the voltage-domain power-control
> registers, but why do you need to control them now?
>
> Side-question, how are voltage-domains handled on the other SoCs.
> The RK3588 also has the PMU_VOL_GATE_CONx registers, so I guess
> they could also be turned off?

In his v3 review [1], Finley Xiao, an engineer at Rockchip, asked me
to include Rockchip's voltage-domain handshake when adding RK3572 NPU
support. Specifically, he asked me to call rockchip_pmu_vd_on() to
request VD_NPU before asking the PMU to power up PD_NPU.

So far I've only tested basic NPU power management on RK3572. I haven't
run a compute workload, so I can't say which NPU functions, if any,
would be affected by omitting the VD request.

I compared the upstream and Rockchip drivers for RK3588. Both switch
the top-level NPU domain using bit 1 of PMU_PWR_GATE_SFTCON0 [2].
Neither writes PMU_VOL_GATE_CON0 during normal NPU domain transitions.

Should I keep the VD_NPU request before powering up PD_NPU on RK3572
in v6?

> But in general, if you need to enable the voltage-domain to enable the
> power-domain inside it, this really sounds more like a power-domain of
> a different type - because the wiggling inside the power-domain
> handling below looks strange, and we already are handling domain
> trees.

I checked Rockchip's kernel and the RK3572 documentation, but I couldn't
find a separate status bit for VD_NPU. If I model it as a parent
domain, would it make sense to track its state in software?

>> -	int clk_ungate_w_mask = pd_info->clk_ungate_mask << 16;
>> +	u32 clk_ungate_w_mask = (u32)pd_info->clk_ungate_mask << 16;
>
> why does it need to be u32 now?
> Yes, the mask should probably be u32, but why not change simply change
> the global type then?

I'll make clk_ungate_mask itself u32 in v6 and drop the cast.

> both the clk_ungate_offset + status_offset addition should probably be
> separate patches, as they should get a descriptive commit message on
> why they are needed.
>
>> +	if (pmu->info->chain_status_inverted)
>> +		return !(val & pd->info->mem_status_mask);
>
> again, introducing this new parameter should get its own commit and
> descriptive message on what this does.

I'll split these.

>> +	return regmap_read_poll_timeout(pmu->grf, pmu->info->fw_status_offset,
>> +				       val, (val & mask) == mask, 0, 10000);
>> +}
>
> this definitly also needs way more explanation

Understood.

[1] https://lore.kernel.org/all/18fcfe7a-e25a-4516-810f-d787b779914d@rock-chips.com/
[2] RK3588 TRM, Part 1, v1.1, chapter 7, especially section 7.5.5:
    https://dl.namtso.com/products/a10/a10-3588/datasheets/rockchip-rk3588-trm-v1.1-part1.pdf

Best regards,
Cunhao Lu

pw-bot: cr
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
