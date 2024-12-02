Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64D9FD49798
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 03:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5g+54RrJmd12KJbn5HvPKMhK+jaGu0I2F1kD1AqqMQ=; b=4UmAeOmh50MoxJ
	Li0E75ZZ7evqebFxQCH3DRe/xHqMZNg1nCxYIiRmTqqN9cDUA+MWSE0e/JCXzHV0jLQCzmbQa9h/1
	9S4VEf//QlHlEU18LggyVezSGIRR1YgbOkzQk4M236YiwTzPsdRV+LHiGURrx66fpVj4XEM/1pRk8
	ezwW+TENvTqH2+QL+gLDkrOEqtsWuLljw/hFeT1a4NAax4ojJOyYr1z8ga5fOBsPUH12b9D52v+fd
	dgxc8XIl5depmmOp0VEJcfu8fZa2wDtd3dz+hm+b2Pm9N6BSoMOCX8ftg31FmCnPyXty1JoU2LtwJ
	6fnl7Hzyzh0MztWkADdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHxal-0000000509t-3oQZ;
	Mon, 02 Dec 2024 03:59:23 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHxae-00000005076-3ngL
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Dec 2024 03:59:22 +0000
X-QQ-mid: bizesmtpip4t1733111899tlvff56
X-QQ-Originating-IP: vMQJaOZ47cUFKgAjPqPaMmnImir+v1iuEhaK45dHo9g=
Received: from [IPV6:240f:10b:7440:1:f3e2:5ab0 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 02 Dec 2024 11:58:14 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14815698824521554148
Message-ID: <E09DCB0C302E5757+722fa6e3-3001-4c3d-8a31-bbd7efa0d3b3@radxa.com>
Date: Mon, 2 Dec 2024 12:58:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: cosmetic changes for Radxa
 ROCK 5B
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 linux-rockchip@lists.infradead.org, alchark@gmail.com, krzk+dt@kernel.org,
 dsimic@manjaro.org
References: <20241202023227.2671-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241202023227.2671-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MRY6qckr/MVJ2xWtCpd5wkq6Prz6Albv7Q5hK2xBLOFOSa3E19CUut/l
	n5IwDPpcooFCC/j8yzUL8WdK21WehKkufQbdDgu0tlImFge2oFV9fu1OIf23+l9Sem2wHoG
	JaqYcvSNEA2pUafhFCh/zds+KOqZVFdoplzTFh4V79Ow2frqiVJbZd0xKMAjWLQjOQ+v7lb
	oWrDpheskCcJ0nCFojsPdQUhU+Rq9sGjbgHuSAfaXXTTsDOvXeezqIktM18+UL7oW+JcYG0
	NIwIhFRqBJf/o4D6eHmUEMOgbGeU2OVnASaWNtxPyK2pl7RznHLNKIc/S+NYTL1tzkHt5p5
	lHdm4D4TvyrJCxbiyaqu3fs0xz2OrdNDga40JRqKx9VxAVVRxJGwA+Zlo98vOP2qQG5Jo1h
	Hh0YYqlB6H///7aiY1Eq3TbxT2Lx5UeLvxqubo7oVwtfQ/o0yNhKwtredvIgFw74zSwF59f
	TunUKGgQljc4aTHQfUprtCHQV2MEgnonmGR7qlr6uvUFi1KECrvMNiRmmGuQPBus6N+La8U
	HbeFxqsLwBp1cXLkJnhYfI069LoqXk+u0XKBlD9tgV4dpLu6zMOOtbBH7iLtCV4V+ilg2dP
	cNhKuutWgbUTmVISorm6E3BFWAe0KHoNw3yDSH8opD+EjSdlHDdNOopcrTjmUyeBed2Iu8A
	NHTasuqNNky0N7SNa8q1QR1g3pIxBIpDuWriGeB9yYbIQuGGluja8AVxUADbIeFDFUacO7Y
	lbBqKtVX0Apug0hmu/v6m2w2++BnRS2Wfkj7I3NGLroqLozO2lljY4j/d4R5HdR/9T61rAt
	st6JnwBaZDsTwDdFFvPl5m68DtP6ojMK8F7JbtkJfkNO4T9yzSKwx2O9q2gkpJBlNfbnxqh
	8PIvo7WesV7k/o0QenSPqcicM/vWE8ccpQQ1PHWREKY=
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241201_195917_442280_2F4F8B80 
X-CRM114-Status: UNSURE (   8.50  )
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

Hi,

I'm preparing patches for ROCK 5B+ (upgrade version of 5B) and for ROCK 
5T (upgrade version of 5B+).

I think it's possible to make shared .dtsi for these three boards.

then, these two patch series
  "arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B"
and
  "arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B"
will be dropped.

please wait a week or so to submit my new patch series.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/2/24 11:32, FUKAUMI Naoki wrote:
> this patch series sort nodes and properties, remove redundant
> properties, and minor cosmetic changes.
> 
> no functional change is intended.
> 
> this patch series depend on following patch series:
>   "arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B"
>   https://patchwork.kernel.org/project/linux-rockchip/cover/20241130004057.7432-1-naoki@radxa.com/
> 
> FUKAUMI Naoki (4):
>    arm64: dts: rockchip: sort nodes in .dts for Radxa ROCK 5B
>    arm64: dts: rockchip: sort nodes in root node for Radxa ROCK 5B
>    arm64: dts: rockchip: sort properties in .dts for Radxa ROCK 5B
>    arm64: dts: rockchip: cosmetic changes for Radxa ROCK 5B
> 
>   .../boot/dts/rockchip/rk3588-rock-5b.dts      | 184 ++++++++----------
>   1 file changed, 86 insertions(+), 98 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
