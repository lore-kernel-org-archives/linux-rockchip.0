Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27736CFD2F6
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 13:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MYHM5LhOq3e4pqbnQDeX//iFL0A61OdVVrmuuncDws=; b=m8iOLqaxY6Xzvb
	Opzg9/46IlLlSRdh7EOkAj74hFD0qactqK1VaX4CYLZZJnt0jKmTjksx4Wz8C8PpEfrmeqNHmwfvn
	BB+Ff3MGoJiqqyS2MS11pqUA4LZ5wMWuVCt/K+DD5pGNuoQP9qNrgDznQMyFEW0L9XNhJehMq1OLn
	wXesP5ZK/99QWdb9/+d7XtAPk7uBRFFfZ0lwkHMZh0rTP5FbXxWdKrNsBb+gKhpljfmJ5LqVWVGkV
	A3VZg/dqiKhKxAJ67RI0ggs3r8Z7D1qxgbFLT/OQWLv6V3k18S1MxsZEn330n5/vhg/qHiuos4q8K
	OYNr7fcpJQs2ifHR1+aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQQq1-00000005TKR-02Uj;
	Tue, 02 Dec 2025 13:54:41 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQQpx-00000005TJn-1RdF
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 13:54:38 +0000
X-QQ-mid: zesmtpip2t1764683638t31b7b010
X-QQ-Originating-IP: sb64r6O47jjjH5w5oIDnoBTEBXLnfUgt9M/oBxU68ZQ=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 21:53:52 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 499419002538705467
Message-ID: <A665FF5170FE9550+0e1d2609-454b-4a82-9e52-2d167e351187@radxa.com>
Date: Tue, 2 Dec 2025 22:53:51 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: Make eeprom read-only for Radxa
 ROCK 3C/5A/5C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dsimic@manjaro.org,
 heiko@sntech.de, krzk+dt@kernel.org, linux-rockchip@lists.infradead.org
References: <20251201144629.135570-1-naoki@radxa.com>
 <20251202135008.513685-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251202135008.513685-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MVkZiY22hz/mWTqE3GlezKOdRtk9ZhRntpdPqE+Caax+dX162d0oE1yX
	dokc3p4i9Sx2NEGuR3aVCElsfqaY5xIXHfhuG/v13SCk+hLY/u6+Bh/41T8XNSPwGHU95pv
	kD/c97E5yXD3n8tPvttwprhmBHxnLdbLqKOOj1oepWDrPyVO6t5TWLZAJBqBaU6mp6pXq28
	EPC8o8VOH1E9bx0820cQKvoUNO+YBtqYmW8hq7/l79ymqH6KGMJy5Pu7zJFF+D69jIQqPsE
	D2zrN+nZVH6Kz6MzcohBOU4BEWMviXywNfLKdV2QEAS7c3Y0llUYGcKHl+8ISgk+gTbkN/K
	+OYxgTfK24YYWqf5f5cNR/FswT/2HJdRqHw95HxGOsICnZNxlLkFpa1YbiOeV+fgt4/Lewt
	aIVcmOP9KSTmnRkYO1RcDxxVxPvlyg/S8QCDVqPbSpwnobsBbK2YXy3yi0PdZLvEeSRuh2+
	xAvQkCxrzOpfA9UMP6PguZlSf0Yj+qTeYtmDQYKr404GoSmlEp6K3reSlq5BSQxnlKmVhCs
	wn/z5FRw1T6F3cUfEJm575UmEfnh9ON9ZZG/gZMWHn08Yk17CsKFRKPoQmsOjKD3W8C6wrF
	q7iea2bj8xK+93a0W1L++KPgeTZ7CL6VcoMN0t4ErUprvdqQvgUsmWPlwQHBp8VPpiuUJW9
	eHXCyi3Z6hRKRF9eHIAMk+YR+V+w6hM9FXw+48Qyr6oCDJqxLh3Zkc38V4X0X6R9GR4RIBz
	U2n98Scdgegi/cxv1c2/aGGVzsCV6MLPRmZddQu6F9s2c5ouSPwQ1eNx1QDsY/r6yHJ2v9i
	tPSSGLje0uKckUy/Ey/zpFmFndfwO41B09iruWGrl2MX0Ms1TX5CQMeDfV/gm7NTKBU96+B
	zlv5Ac0/k8BJlqHLAdqWQ7TxCXDbOELYUuYEHsaMPk0wz5anHc7xEoqeYETV45R38UGzNOP
	VvnJW8gW0LUBsn+l5xScrDe8kWO3LmG5J3B8=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_055437_844233_1A3B0B9A 
X-CRM114-Status: UNSURE (   7.11  )
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

Hi Chukun,

On 12/2/25 22:50, Chukun Pan wrote:
> Hi,
> 
>> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
>> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
>> Fixes: 3ddf5cdb77e6e ("arm64: dts: rockchip: add Radxa ROCK 5C")
> 
> Since the EEPROM on these boards are empty, this patch doesn't
> fix anything, so the Fixes tag is not needed here. If you want
> it to be backported, you can add "Cc: stable@vger.kernel.org"

Ah, sure, Fixes tags are not needed. Thank you for pointing that out.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
