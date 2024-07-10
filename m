Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5DF5C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 15:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6ILlucRLf3pQn3O2JrjUx1mwe2HiDU10JDv4XlaH9I=; b=Ha53DWokQcGFRn
	7fG+VS0UxQk30CeY8wCruZcJP911HGS7F2oyWlUV9+pCvmMPVT0kkySypbB7688RsJfvnqMzgmDYj
	sdpLF4ZBEFERgaWowhaGIlixAlh0V7/csh+RpUClx72XAwpoEKpcVJpOCqwZuPhNW870A7/0b4AHc
	EM1U3qdp6dZH0bKnu6r87DKCXOz5lumm3ei8H8hizOkDHCLGcxYhboxs0KLJLiPRXT2J2hNKQ3i3m
	bAwqhPqobFkeKvDbgRt1uy8R89UCl1cAO1rZxXzDD4bvj8r//Gm+WHF1sTzfJgFXHnBP4exbxrjFD
	6AraNqvnC8rODRun6FSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYv4-0000000Aukn-0RkW;
	Wed, 10 Jul 2024 15:07:46 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYv1-0000000Auk1-2FqZ
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 15:07:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1720624050;
 bh=F6o0iKuzMpNCZryVyBnGh4a50UcOdGv/aCY80jGMdOM=;
 b=HaF2bj1nHusWbQlJTV6i4VNNUtJb3GSq5cCf4gSiArP46EH5oNE6g6O0W83FnzFgs9huAYf2M
 kQjFr1qOu3W61QAXlH+Gh18AccAn3cQrW0x02NJpqkR7GTgodNEcIxx+js7gOex/ZEvVByQCupL
 hNNdlDzXYItbVcnwuCrn7dcYdMLPiZpYOOfWx0xKpkuAGutDaAg5bMg3sS26VZI0shcEARlXwBI
 9q1rj5HsbV8pk4jjO607+s+BqXwFtBZud8qu8jw54LSqd6To/HLnfW2jvQ7MFgxqKCrPCKhnRbv
 SWKO5q64/TMp03O5MoqEeGM/w8gW8AmmPFfnrg+i3UeA==
Message-ID: <08cc4f4c-5c26-4dbd-8fbc-5686fbc06b80@kwiboo.se>
Date: Wed, 10 Jul 2024 17:07:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/9] arm64: dts: rockchip: use generic Ethernet PHY
 reset bindings for Lunzn Fastrhino R68S
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
References: <caf55fe6-4674-4c89-a94e-f4ad348e2ba0@kwiboo.se>
 <20240710145010.688986-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240710145010.688986-1-amadeus@jmu.edu.cn>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 668ea3aefc7608dd27c22b29
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_080743_650847_95538EB2 
X-CRM114-Status: GOOD (  12.02  )
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

On 2024-07-10 16:50, Chukun Pan wrote:
>> Where do you find the 72ms in the datasheet?
> 
> I refer to this commit:
> https://github.com/torvalds/linux/commit/1c7412530d5d0e0a0b27f1642f5c13c8b9f36f05
> BTW I found that some boards use the RTL8211F-VD PHY,
> but I can't find the datasheet.

Thanks, I can also see in RTL8211F-VD-CG (Rev 1.0 - 08 February 2022):

  For a complete PHY reset, this pin must be asserted low for at least
  10ms for the internal regulator. Wait for at least 72ms* before
  accessing the PHY register. * Note: Not included the 0.9V rise time.

So using 80-100ms may be the best option to be on the safe side, should
probably send a fix for recently added boards where I used 50ms.

Regards,
Jonas

> 
>> In RTL8211F-CG v1.1 I see 10ms and minimum of 30ms, in v1.2 and v1.4
>> I see 10ms and minimum of 50ms.
> 
>> I have used 50ms on a few recently added boards and they seem to all
>> work fine with 50ms, wonder if the deassert delay should be changed for
>> those boards.
> 
> Thanks,
> Chukun
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
