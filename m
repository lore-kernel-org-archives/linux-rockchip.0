Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6D19CCF9EA
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 22:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESzdLKhTyBU3rtlRNOl+UZKhiR0qo9FqrdACRwSsOO0=; b=UdDw9s3hn5mf6T
	s+nDSNE0bmqmUVRhPAv+scttHHg0x6RG3HJA5kqYPGKI2p9AJGzv3Ic5KjOAA4bx3AcwysFmCIeP9
	Voy8ez/aGfzidkA1jzhueb/rdSXwofxU0uV44Kr37MRQMjD5qDn0zn5loEzdVTKoE8/5TWueHHtpD
	auXIwcbKV4V9kxN8WbjG35qujjDDCN/wIDxJG70pOzKRbtP90rRcJny4HsHSBs6HacTT9na+f0oSq
	/LuskqiYEQR+4JqLKkF8CVbdmv9OvrqKTlLEiCzDSWKuvbgeltlWaN89TCDVTPk2Tr/TovHV/y0ut
	2jXD876DDvmTJyL/8vWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVyP-0000000EtRR-1qvE;
	Mon, 27 Oct 2025 22:45:57 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVyM-0000000EtQl-0eAL
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 22:45:56 +0000
X-QQ-mid: zesmtpip3t1761605111t4701265c
X-QQ-Originating-IP: Oyz5d5PWUPpnQKAXY0lT+7I1lZkCl8u+dLu11YNR+6c=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 06:45:07 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12312699638803652681
Message-ID: <39A1753DD4465571+84702d80-a0cc-46e0-8c83-1edf835c31be@radxa.com>
Date: Tue, 28 Oct 2025 07:45:06 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] dt-bindings: arm: rockchip: Add Radxa ROCK 5 ITX+
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, dsimic@manjaro.org, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-6-naoki@radxa.com>
 <5cdd3d92-eaed-4710-b56b-c9ce46bf7edc@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <5cdd3d92-eaed-4710-b56b-c9ce46bf7edc@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NWLpwLZrMWrIOmQbxR6wNI8YzakCoe8FvjyQQ1OEbkOMzhIZjTGxM1BJ
	6Ps/6Dp+KeyYwrXHjKMTiWCORd3NiR0r6TbyBAYPNVwX/H2Lvx8AZlTlcnyQZjnmuvaq6RQ
	s5+wAfV6jDIBpO38autUvDxdEzdCh4hRxuLq+ffpMzVt2ouMF0OLuKvfgrzoM0qhGQSr6Jz
	cPl5Rbs44rAV6teIUnXy/BQfoRxCicrn6150qqLdJ6abUYdrx+9tRYcppkV/2IWzI6M0Xfx
	ldR5sIgaS84zIuZMbNKkJ3dZuQVyhy0qf5dqY3Fak+aqp43f8NgDYLACeDPCJKyRpJ7S5fy
	INjv3P/wZxm3km6X/n3p4r1vuUm2R12fBLFsRlbAwyyXzXFGF4co6OgetqVoB59ClprbTuF
	cWEEkTb4luZa4WwkRt/Oumvd/h3e6u/aHud0Gp30Rq4mPsQh2t/fKXQ4YA9Zcc7ow+dH4pD
	hRMFgsN4kEdILjQYDxe7fYjNS2BoB6GYjitl1p2dWC1+91qHxuLgnzE586BY3gTrPbZ+p/n
	WQ8EotapiBLqW+r6hq2iV2cmlir5Iyx3sSRaxoztQJK7XTwFrTzgu6I0NJc9otpiYEsptbc
	zTfW6xkGVDycXh25tCAUTciV3Zs+HevHGXdAffIz3PVJEu5cyWKd9mxD/SKCdoMi4lDr68a
	QMqlXBKRVcEKxz+suc8Gw0QndzTG3Ch6XeuriLWStv1Z3xq9uGShqIqCywQkTfMUh+iSL5g
	+aUeWdT0kbbb8Wz9bma/qp3cCwOP7LCEu0prhJz/tBaeFDgtlkxP6EHEHgqv43eKcwkrho6
	hMaeJGyub9Cs702KDCpcUTfWNYKwROD9dX+1GsjLlFFJNqQIZVTi4R132BcErn5ZTFioirW
	0YBV7g3m2koCXDZduQL4FQ2QxBW89P0OJ0Nt0pE1OQfUTC//2zbx49TvbQgk+achQJSNSd1
	pMlTNu7H16XIWLQnkNlNiTGIxgXr4BDSuIU9yWeugkzB00w==
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_154554_949460_C6638F18 
X-CRM114-Status: UNSURE (   9.24  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

Thank you very much for your review.

On 10/28/25 04:09, Krzysztof Kozlowski wrote:
> On 27/10/2025 13:26, FUKAUMI Naoki wrote:
>> The Radxa ROCK 5 ITX+ is equivalent to the Radxa ROCK 5 ITX at the DTS
> 
> No clue what you want to say here. Same board? Different board but
> compatible (then patch is wrong)?

The ROCK 5 ITX+ is the ROCK 5 ITX rev.1.2. However, I noticed missing 
documentation regarding the ROCK 5 ITX+. Since I don't have evidence, 
I'm dropping this patch. (It's not an issue as it works without this patch.)

I found issues with this entire patch series, so I'm dropping the whole 
patch series.

Thanks.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> level. Therefore, we'll simply append the "ITX+" to the existing entry
>> for the Radxa ROCK 5 ITX.
> 
> Best regards,
> Krzysztof
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
